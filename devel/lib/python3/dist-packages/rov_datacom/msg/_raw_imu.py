# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rov_datacom/raw_imu.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class raw_imu(genpy.Message):
  _md5sum = "664714df4d0d5aab2c4e8d96fd461349"
  _type = "rov_datacom/raw_imu"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint32 time
float64[3] acc
float64[3] gyro
float64[3] mag"""
  __slots__ = ['time','acc','gyro','mag']
  _slot_types = ['uint32','float64[3]','float64[3]','float64[3]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time,acc,gyro,mag

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(raw_imu, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.time is None:
        self.time = 0
      if self.acc is None:
        self.acc = [0.] * 3
      if self.gyro is None:
        self.gyro = [0.] * 3
      if self.mag is None:
        self.mag = [0.] * 3
    else:
      self.time = 0
      self.acc = [0.] * 3
      self.gyro = [0.] * 3
      self.mag = [0.] * 3

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.time
      buff.write(_get_struct_I().pack(_x))
      buff.write(_get_struct_3d().pack(*self.acc))
      buff.write(_get_struct_3d().pack(*self.gyro))
      buff.write(_get_struct_3d().pack(*self.mag))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (self.time,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 24
      self.acc = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 24
      self.gyro = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 24
      self.mag = _get_struct_3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.time
      buff.write(_get_struct_I().pack(_x))
      buff.write(self.acc.tostring())
      buff.write(self.gyro.tostring())
      buff.write(self.mag.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (self.time,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 24
      self.acc = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=3)
      start = end
      end += 24
      self.gyro = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=3)
      start = end
      end += 24
      self.mag = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=3)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
