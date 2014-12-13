class Rarmalib::Rupc
  attr_reader :cid

  # ensure that child classes call this method.
  # won't work otherwise.
  # I don't know if oop.h has a "super" function.
  __native
  def rupc_init
    <<-SQF
       /*
        * acquire new class id by classname.
        *
        * _className should contain the current class name,
        * not a code reference. We need this to tell RUPC
        * what class on the ruby side we want to initiate.
        *
        * haven't checked yet if _className is valid...
        */

        // what if something goes wrong? WHAT could go wrong?
        _cid = RARMA_RUBY(format["Rarma::RUPC.new_instance('%1')", _className]);

        // class is useless without a reference on the ruby side.
        // there should be way more than just exitWith as I don't think
        // this stops oop.h "instantiating" this class.
        if(isNil "_cid") exitWith {
          // something wicked happened.
          LOGGER_ERROR(format["Could not instantiate class %1", _className);
        };

        LOGGER_DEBUG(format["Instantiated class %1 with cid %2", _className, _cid]);
        MEMBER("@cid", _cid);
    SQF
  end

  __native
  def rupc_call _meth, _args
    <<-SQF
      _cid = MEMBER("@cid",nil)
      _result = RARMA_RUBY(format["Rarma::RUPC['%1'].call('%2', '%3')", _cid, _meth, _args])
      /*
       * the result is a string. since ruby and sqf (luckily) share common types like
       * boolean, array, string, numbers, even 'nil', we can call compile the result.
       *
       * Rarma::RUPC must take care of returning a valid result since it's 178219 times
       * easier to handle whatever kind of error in ruby than in sqf. "try" and "catch"
       *
       * yea, sure.
       */
       call compile _result; // this is where shit can happen...
    SQF
  end
end
