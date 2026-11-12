# thingsboard_client.model.SmppSmsProviderConfiguration

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**protocolVersion** | **String** | SMPP version | 
**host** | **String** | SMPP host | 
**port** | **int** | SMPP port | 
**systemId** | **String** | System ID | 
**password** | **String** | Password | 
**systemType** | **String** | System type | [optional] 
**bindType** | [**SmppBindType**](SmppBindType.md) | TX - Transmitter, RX - Receiver, TRX - Transciever. By default TX is used | [optional] 
**serviceType** | **String** | Service type | [optional] 
**sourceAddress** | **String** | Source address | [optional] 
**sourceTon** | **String** | Source TON (Type of Number). Needed is source address is set. 5 by default. 0 - Unknown 1 - International 2 - National 3 - Network Specific 4 - Subscriber Number 5 - Alphanumeric 6 - Abbreviated | [optional] 
**sourceNpi** | **String** | Source NPI (Numbering Plan Identification). Needed is source address is set. 0 by default. 0 - Unknown 1 - ISDN/telephone numbering plan (E163/E164) 3 - Data numbering plan (X.121) 4 - Telex numbering plan (F.69) 6 - Land Mobile (E.212) =6 8 - National numbering plan 9 - Private numbering plan 10 - ERMES numbering plan (ETSI DE/PS 3 01-3) 13 - Internet (IP) 18 - WAP Client Id (to be defined by WAP Forum) | [optional] 
**destinationTon** | **String** | Destination TON (Type of Number). 5 by default. 0 - Unknown 1 - International 2 - National 3 - Network Specific 4 - Subscriber Number 5 - Alphanumeric 6 - Abbreviated | [optional] 
**destinationNpi** | **String** | Destination NPI (Numbering Plan Identification). 0 by default. 0 - Unknown 1 - ISDN/telephone numbering plan (E163/E164) 3 - Data numbering plan (X.121) 4 - Telex numbering plan (F.69) 6 - Land Mobile (E.212) =6 8 - National numbering plan 9 - Private numbering plan 10 - ERMES numbering plan (ETSI DE/PS 3 01-3) 13 - Internet (IP) 18 - WAP Client Id (to be defined by WAP Forum) | [optional] 
**addressRange** | **String** | Address range | [optional] 
**codingScheme** | **String** | 0 - SMSC Default Alphabet (ASCII for short and long code and to GSM for toll-free, used as default) 1 - IA5 (ASCII for short and long code, Latin 9 for toll-free (ISO-8859-9)) 2 - Octet Unspecified (8-bit binary) 3 - Latin 1 (ISO-8859-1) 4 - Octet Unspecified (8-bit binary) 5 - JIS (X 0208-1990) 6 - Cyrillic (ISO-8859-5) 7 - Latin/Hebrew (ISO-8859-8) 8 - UCS2/UTF-16 (ISO/IEC-10646) 9 - Pictogram Encoding 10 - Music Codes (ISO-2022-JP) 13 - Extended Kanji JIS (X 0212-1990) 14 - Korean Graphic Character Set (KS C 5601/KS X 1001) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


