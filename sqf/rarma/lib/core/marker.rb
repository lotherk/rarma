class Rarma::Marker
  attr_accessor :pos, :type, :shape, :color, :dir, :size, :brush, :alpha
  attr_reader :this, :name, :local

  def initialize _name, _pos, _shape="ICON", _type="Empty", _dir=0
    @name = _name
    @pos = _pos
    @shape = _shape
    @type = _type
    @dir = _dir
  end

  def create _local=false
    @local = _local
    unless _local
      @this = SQF.createMarker @name, @pos
      SQF.setMarkerShape @this, @shape
      SQF.setMarkerType @this, @type
    else
      @this = SQF.createMarkerLocal @name, @pos
      SQF.setMarkerShapeLocal @this, @shape
      SQF.setMarkerTypeLocal @this, @type
    end
  end

  def delete
    unless @local
      SQF.deleteMarker @this
    else
      SQF.deleteMarkerLocal @this
    end
  end

  def pos= _pos
    @pos = _pos
    unless @local
      SQF.setMarkerPos @this, _pos
    else
      SQF.setMarkerPosLocal @this, _pos
    end
  end

  def pos
    @pos = SQF.markerPos @this
    @pos
  end

  def type= _type
    @type = _type
    unless @local
      SQF.setMarkerType @this, _type
    else
      SQF.setMarkerTypeLocal @this, _type
    end
  end

  def type
    @type = SQF.markerType @this
    @type
  end

  def shape= _shape
    @shape = _shape
    unless @local
      SQF.setMarkerShape @this, _shape
    else
      SQF.setMarkerShapeLocal @this, _shape
    end
  end

  def shape
    @shape = SQF.markerShape @this
    @shape
  end

  def color= _color
    @color = _color
    unless @local
      SQF.setMarkerColor @this, _color
    else
      SQF.setMarkerColorLocal @this, _color
    end
  end

  def color
    @color = SQF.markerColor @this
    @color
  end

  def dir= _dir
    @dir = _dir
    unless @local
      SQF.setMarkerDir @this, _dir
    else
      SQF.setMarkerDirLocal @this, _dir
    end
  end

  def dir
    @dir = SQF.markerDir @this
    @dir
  end

  def size= _size
    @size = _size
    unless @local
      SQF.setMarkerSize @this, _size
    else
      SQF.setMarkerSizeLocal @this, _size
    end
  end

  def size
    @size = SQF.markerSize @this
    @size
  end

  def brush= _brush
    @brush = _brush
    unless @local
      SQF.setMarkerBrush @this, _brush
    else
      SQF.setMarkerBrushLocal @this, _brush
    end
  end

  def brush
    @brush = SQF.markerBrush
    @brush
  end

  def alpha= _alpha
    @alpha = _alpha
    unless @local
      SQF.setMarkerAlpha @this, _alpha
    else
      SQF.setMarkerAlphaLocal @this, _alpha
    end
  end

  def alpha
    @alpha = SQF.markerAlpha
    @alpha
  end

end

