part of dartcoin.core;

class MemPoolMessage extends Message {
  
  MemPoolMessage() : super("mempool");

  factory MemPoolMessage.deserialize(Uint8List bytes, {int length: BitcoinSerialization.UNKNOWN_LENGTH, bool lazy: true}) => 
      new BitcoinSerialization.deserialize(new MemPoolMessage(), bytes, length: length, lazy: lazy);
  
  int _deserialize(Uint8List bytes) {
    int offset = Message._preparePayloadSerialization(bytes, this);
    return offset;
  }
  
  Uint8List _serialize_payload() {
    return new Uint8List(0);
  }
}