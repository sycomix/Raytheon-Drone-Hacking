.class public Lorg/mortbay/jetty/HttpStatus;
.super Ljava/lang/Object;
.source "HttpStatus.java"


# static fields
.field public static final Accepted:Ljava/lang/String; = "Accepted"

.field public static final Accepted_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Bad_Gateway:Ljava/lang/String; = "Bad Gateway"

.field public static final Bad_Gateway_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Bad_Request:Ljava/lang/String; = "Bad Request"

.field public static final Bad_Request_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final CACHE:Lorg/mortbay/io/BufferCache;

.field public static final Conflict:Ljava/lang/String; = "Conflict"

.field public static final Conflict_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Continue:Ljava/lang/String; = "Continue"

.field public static final Continue_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Created:Ljava/lang/String; = "Created"

.field public static final Created_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Expectation_Failed:Ljava/lang/String; = "Expectation Failed"

.field public static final Expectation_Failed_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Failed_Dependency:Ljava/lang/String; = "Failed Dependency"

.field public static final Failed_Dependency_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Forbidden:Ljava/lang/String; = "Forbidden"

.field public static final Forbidden_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Found:Ljava/lang/String; = "Found"

.field public static final Found_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Gateway_Timeout:Ljava/lang/String; = "Gateway Timeout"

.field public static final Gateway_Timeout_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Gone:Ljava/lang/String; = "Gone"

.field public static final Gone_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final HTTP_Version_Not_Supported:Ljava/lang/String; = "HTTP Version Not Supported"

.field public static final HTTP_Version_Not_Supported_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Insufficient_Storage:Ljava/lang/String; = "Insufficient Storage"

.field public static final Insufficient_Storage_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Internal_Server_Error:Ljava/lang/String; = "Internal Server Error"

.field public static final Internal_Server_Error_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Length_Required:Ljava/lang/String; = "Length Required"

.field public static final Length_Required_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Locked:Ljava/lang/String; = "Locked"

.field public static final Locked_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Method_Not_Allowed:Ljava/lang/String; = "Method Not Allowed"

.field public static final Method_Not_Allowed_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Moved_Permanently:Ljava/lang/String; = "Moved Permanently"

.field public static final Moved_Permanently_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Moved_Temporarily:Ljava/lang/String; = "Moved Temporarily"

.field public static final Moved_Temporarily_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Multi_Status:Ljava/lang/String; = "Multi Status"

.field public static final Multi_Status_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Multiple_Choices:Ljava/lang/String; = "Multiple Choices"

.field public static final Multiple_Choices_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final No_Content:Ljava/lang/String; = "No Content"

.field public static final No_Content_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Non_Authoritative_Information:Ljava/lang/String; = "Non Authoritative Information"

.field public static final Non_Authoritative_Information_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Not_Acceptable:Ljava/lang/String; = "Not Acceptable"

.field public static final Not_Acceptable_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Not_Found:Ljava/lang/String; = "Not Found"

.field public static final Not_Found_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Not_Implemented:Ljava/lang/String; = "Not Implemented"

.field public static final Not_Implemented_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Not_Modified:Ljava/lang/String; = "Not Modified"

.field public static final Not_Modified_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final OK_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final ORDINAL_100_Continue:I = 0x64

.field public static final ORDINAL_101_Switching_Protocols:I = 0x65

.field public static final ORDINAL_102_Processing:I = 0x66

.field public static final ORDINAL_200_OK:I = 0xc8

.field public static final ORDINAL_201_Created:I = 0xc9

.field public static final ORDINAL_202_Accepted:I = 0xca

.field public static final ORDINAL_203_Non_Authoritative_Information:I = 0xcb

.field public static final ORDINAL_204_No_Content:I = 0xcc

.field public static final ORDINAL_205_Reset_Content:I = 0xcd

.field public static final ORDINAL_206_Partial_Content:I = 0xce

.field public static final ORDINAL_207_Multi_Status:I = 0xcf

.field public static final ORDINAL_300_Multiple_Choices:I = 0x12c

.field public static final ORDINAL_301_Moved_Permanently:I = 0x12d

.field public static final ORDINAL_302_Found:I = 0x12e

.field public static final ORDINAL_302_Moved_Temporarily:I = 0x12e

.field public static final ORDINAL_303_See_Other:I = 0x12f

.field public static final ORDINAL_304_Not_Modified:I = 0x130

.field public static final ORDINAL_305_Use_Proxy:I = 0x131

.field public static final ORDINAL_400_Bad_Request:I = 0x190

.field public static final ORDINAL_401_Unauthorized:I = 0x191

.field public static final ORDINAL_402_Payment_Required:I = 0x192

.field public static final ORDINAL_403_Forbidden:I = 0x193

.field public static final ORDINAL_404_Not_Found:I = 0x194

.field public static final ORDINAL_405_Method_Not_Allowed:I = 0x195

.field public static final ORDINAL_406_Not_Acceptable:I = 0x196

.field public static final ORDINAL_407_Proxy_Authentication_Required:I = 0x197

.field public static final ORDINAL_408_Request_Timeout:I = 0x198

.field public static final ORDINAL_409_Conflict:I = 0x199

.field public static final ORDINAL_410_Gone:I = 0x19a

.field public static final ORDINAL_411_Length_Required:I = 0x19b

.field public static final ORDINAL_412_Precondition_Failed:I = 0x19c

.field public static final ORDINAL_413_Request_Entity_Too_Large:I = 0x19d

.field public static final ORDINAL_414_Request_URI_Too_Large:I = 0x19e

.field public static final ORDINAL_415_Unsupported_Media_Type:I = 0x19f

.field public static final ORDINAL_416_Requested_Range_Not_Satisfiable:I = 0x1a0

.field public static final ORDINAL_417_Expectation_Failed:I = 0x1a1

.field public static final ORDINAL_422_Unprocessable_Entity:I = 0x1a6

.field public static final ORDINAL_423_Locked:I = 0x1a7

.field public static final ORDINAL_424_Failed_Dependency:I = 0x1a8

.field public static final ORDINAL_500_Internal_Server_Error:I = 0x1f4

.field public static final ORDINAL_501_Not_Implemented:I = 0x1f5

.field public static final ORDINAL_502_Bad_Gateway:I = 0x1f6

.field public static final ORDINAL_503_Service_Unavailable:I = 0x1f7

.field public static final ORDINAL_504_Gateway_Timeout:I = 0x1f8

.field public static final ORDINAL_505_HTTP_Version_Not_Supported:I = 0x1f9

.field public static final ORDINAL_507_Insufficient_Storage:I = 0x1fb

.field public static final ORDINAL_999_Unknown:I = 0x3e7

.field public static final Partial_Content:Ljava/lang/String; = "Partial Content"

.field public static final Partial_Content_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Payment_Required:Ljava/lang/String; = "Payment Required"

.field public static final Payment_Required_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Precondition_Failed:Ljava/lang/String; = "Precondition Failed"

.field public static final Precondition_Failed_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Processing:Ljava/lang/String; = "Processing"

.field public static final Processing_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Proxy_Authentication_Required:Ljava/lang/String; = "Proxy Authentication Required"

.field public static final Proxy_Authentication_Required_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Request_Entity_Too_Large:Ljava/lang/String; = "Request Entity Too Large"

.field public static final Request_Entity_Too_Large_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Request_Timeout:Ljava/lang/String; = "Request Timeout"

.field public static final Request_Timeout_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Request_URI_Too_Large:Ljava/lang/String; = "Request URI Too Large"

.field public static final Request_URI_Too_Large_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Requested_Range_Not_Satisfiable:Ljava/lang/String; = "Requested Range Not Satisfiable"

.field public static final Requested_Range_Not_Satisfiable_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Reset_Content:Ljava/lang/String; = "Reset Content"

.field public static final Reset_Content_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final See_Other:Ljava/lang/String; = "See Other"

.field public static final See_Other_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Service_Unavailable:Ljava/lang/String; = "Service Unavailable"

.field public static final Service_Unavailable_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Switching_Protocols:Ljava/lang/String; = "Switching Protocols"

.field public static final Switching_Protocols_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Unauthorized:Ljava/lang/String; = "Unauthorized"

.field public static final Unauthorized_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Unknown:Ljava/lang/String; = "Unknown"

.field public static final Unknown_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Unprocessable_Entity:Ljava/lang/String; = "Unprocessable Entity"

.field public static final Unprocessable_Entity_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Unsupported_Media_Type:Ljava/lang/String; = "Unsupported Media Type"

.field public static final Unsupported_Media_Type_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final Use_Proxy:Ljava/lang/String; = "Use Proxy"

.field public static final Use_Proxy_BUFFER:Lorg/mortbay/io/Buffer;

.field private static __responseLine:[Lorg/mortbay/io/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x12e

    const/16 v8, 0x20

    const/4 v7, 0x0

    .line 124
    new-instance v4, Lorg/mortbay/io/BufferCache;

    invoke-direct {v4}, Lorg/mortbay/io/BufferCache;-><init>()V

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    .line 127
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Continue"

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Continue_BUFFER:Lorg/mortbay/io/Buffer;

    .line 128
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Switching Protocols"

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Switching_Protocols_BUFFER:Lorg/mortbay/io/Buffer;

    .line 129
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Processing"

    const/16 v6, 0x66

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Processing_BUFFER:Lorg/mortbay/io/Buffer;

    .line 130
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "OK"

    const/16 v6, 0xc8

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->OK_BUFFER:Lorg/mortbay/io/Buffer;

    .line 131
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Created"

    const/16 v6, 0xc9

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Created_BUFFER:Lorg/mortbay/io/Buffer;

    .line 132
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Accepted"

    const/16 v6, 0xca

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Accepted_BUFFER:Lorg/mortbay/io/Buffer;

    .line 133
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Non Authoritative Information"

    const/16 v6, 0xcb

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Non_Authoritative_Information_BUFFER:Lorg/mortbay/io/Buffer;

    .line 134
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "No Content"

    const/16 v6, 0xcc

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->No_Content_BUFFER:Lorg/mortbay/io/Buffer;

    .line 135
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Reset Content"

    const/16 v6, 0xcd

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Reset_Content_BUFFER:Lorg/mortbay/io/Buffer;

    .line 136
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Partial Content"

    const/16 v6, 0xce

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Partial_Content_BUFFER:Lorg/mortbay/io/Buffer;

    .line 137
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Multi Status"

    const/16 v6, 0xcf

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Multi_Status_BUFFER:Lorg/mortbay/io/Buffer;

    .line 138
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Multiple Choices"

    const/16 v6, 0x12c

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Multiple_Choices_BUFFER:Lorg/mortbay/io/Buffer;

    .line 139
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Moved Permanently"

    const/16 v6, 0x12d

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Moved_Permanently_BUFFER:Lorg/mortbay/io/Buffer;

    .line 140
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Moved Temporarily"

    invoke-virtual {v4, v5, v9}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Moved_Temporarily_BUFFER:Lorg/mortbay/io/Buffer;

    .line 141
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Found"

    invoke-virtual {v4, v5, v9}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Found_BUFFER:Lorg/mortbay/io/Buffer;

    .line 142
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "See Other"

    const/16 v6, 0x12f

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->See_Other_BUFFER:Lorg/mortbay/io/Buffer;

    .line 143
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Not Modified"

    const/16 v6, 0x130

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Not_Modified_BUFFER:Lorg/mortbay/io/Buffer;

    .line 144
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Use Proxy"

    const/16 v6, 0x131

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Use_Proxy_BUFFER:Lorg/mortbay/io/Buffer;

    .line 145
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Bad Request"

    const/16 v6, 0x190

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Bad_Request_BUFFER:Lorg/mortbay/io/Buffer;

    .line 146
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Unauthorized"

    const/16 v6, 0x191

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Unauthorized_BUFFER:Lorg/mortbay/io/Buffer;

    .line 147
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Payment Required"

    const/16 v6, 0x192

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Payment_Required_BUFFER:Lorg/mortbay/io/Buffer;

    .line 148
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Forbidden"

    const/16 v6, 0x193

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Forbidden_BUFFER:Lorg/mortbay/io/Buffer;

    .line 149
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Not Found"

    const/16 v6, 0x194

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Not_Found_BUFFER:Lorg/mortbay/io/Buffer;

    .line 150
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Method Not Allowed"

    const/16 v6, 0x195

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Method_Not_Allowed_BUFFER:Lorg/mortbay/io/Buffer;

    .line 151
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Not Acceptable"

    const/16 v6, 0x196

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Not_Acceptable_BUFFER:Lorg/mortbay/io/Buffer;

    .line 152
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Proxy Authentication Required"

    const/16 v6, 0x197

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Proxy_Authentication_Required_BUFFER:Lorg/mortbay/io/Buffer;

    .line 153
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Request Timeout"

    const/16 v6, 0x198

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Request_Timeout_BUFFER:Lorg/mortbay/io/Buffer;

    .line 154
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Conflict"

    const/16 v6, 0x199

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Conflict_BUFFER:Lorg/mortbay/io/Buffer;

    .line 155
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Gone"

    const/16 v6, 0x19a

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Gone_BUFFER:Lorg/mortbay/io/Buffer;

    .line 156
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Length Required"

    const/16 v6, 0x19b

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Length_Required_BUFFER:Lorg/mortbay/io/Buffer;

    .line 157
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Precondition Failed"

    const/16 v6, 0x19c

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Precondition_Failed_BUFFER:Lorg/mortbay/io/Buffer;

    .line 158
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Request Entity Too Large"

    const/16 v6, 0x19d

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Request_Entity_Too_Large_BUFFER:Lorg/mortbay/io/Buffer;

    .line 159
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Request URI Too Large"

    const/16 v6, 0x19e

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Request_URI_Too_Large_BUFFER:Lorg/mortbay/io/Buffer;

    .line 160
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Unsupported Media Type"

    const/16 v6, 0x19f

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Unsupported_Media_Type_BUFFER:Lorg/mortbay/io/Buffer;

    .line 161
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Requested Range Not Satisfiable"

    const/16 v6, 0x1a0

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Requested_Range_Not_Satisfiable_BUFFER:Lorg/mortbay/io/Buffer;

    .line 162
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Expectation Failed"

    const/16 v6, 0x1a1

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Expectation_Failed_BUFFER:Lorg/mortbay/io/Buffer;

    .line 163
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Unprocessable Entity"

    const/16 v6, 0x1a6

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Unprocessable_Entity_BUFFER:Lorg/mortbay/io/Buffer;

    .line 164
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Locked"

    const/16 v6, 0x1a7

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Locked_BUFFER:Lorg/mortbay/io/Buffer;

    .line 165
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Failed Dependency"

    const/16 v6, 0x1a8

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Failed_Dependency_BUFFER:Lorg/mortbay/io/Buffer;

    .line 166
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Internal Server Error"

    const/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Internal_Server_Error_BUFFER:Lorg/mortbay/io/Buffer;

    .line 167
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Not Implemented"

    const/16 v6, 0x1f5

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Not_Implemented_BUFFER:Lorg/mortbay/io/Buffer;

    .line 168
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Bad Gateway"

    const/16 v6, 0x1f6

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Bad_Gateway_BUFFER:Lorg/mortbay/io/Buffer;

    .line 169
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Service Unavailable"

    const/16 v6, 0x1f7

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Service_Unavailable_BUFFER:Lorg/mortbay/io/Buffer;

    .line 170
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Gateway Timeout"

    const/16 v6, 0x1f8

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Gateway_Timeout_BUFFER:Lorg/mortbay/io/Buffer;

    .line 171
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "HTTP Version Not Supported"

    const/16 v6, 0x1f9

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->HTTP_Version_Not_Supported_BUFFER:Lorg/mortbay/io/Buffer;

    .line 172
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Insufficient Storage"

    const/16 v6, 0x1fb

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Insufficient_Storage_BUFFER:Lorg/mortbay/io/Buffer;

    .line 173
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v5, "Unknown"

    const/16 v6, 0x3e7

    invoke-virtual {v4, v5, v6}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v4

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->Unknown_BUFFER:Lorg/mortbay/io/Buffer;

    .line 177
    const/16 v4, 0x258

    new-array v4, v4, [Lorg/mortbay/io/Buffer;

    sput-object v4, Lorg/mortbay/jetty/HttpStatus;->__responseLine:[Lorg/mortbay/io/Buffer;

    .line 180
    sget-object v4, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_1_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    .line 182
    .local v3, "versionLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->__responseLine:[Lorg/mortbay/io/Buffer;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 184
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {v4, v1}, Lorg/mortbay/io/BufferCache;->get(I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v2

    .line 185
    .local v2, "reason":Lorg/mortbay/io/Buffer;
    if-nez v2, :cond_0

    .line 182
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    add-int/lit8 v4, v3, 0x5

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 189
    .local v0, "bytes":[B
    sget-object v4, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_1_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface {v4, v7, v0, v7, v3}, Lorg/mortbay/io/Buffer;->peek(I[BII)I

    .line 190
    add-int/lit8 v4, v3, 0x0

    aput-byte v8, v0, v4

    .line 191
    add-int/lit8 v4, v3, 0x1

    div-int/lit8 v5, v1, 0x64

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 192
    add-int/lit8 v4, v3, 0x2

    rem-int/lit8 v5, v1, 0x64

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 193
    add-int/lit8 v4, v3, 0x3

    rem-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 194
    add-int/lit8 v4, v3, 0x4

    aput-byte v8, v0, v4

    .line 195
    add-int/lit8 v4, v3, 0x5

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v5

    invoke-interface {v2, v7, v0, v4, v5}, Lorg/mortbay/io/Buffer;->peek(I[BII)I

    .line 196
    add-int/lit8 v4, v3, 0x5

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0xd

    aput-byte v5, v0, v4

    .line 197
    add-int/lit8 v4, v3, 0x6

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0xa

    aput-byte v5, v0, v4

    .line 198
    sget-object v4, Lorg/mortbay/jetty/HttpStatus;->__responseLine:[Lorg/mortbay/io/Buffer;

    new-instance v5, Lorg/mortbay/io/ByteArrayBuffer;

    array-length v6, v0

    invoke-direct {v5, v0, v7, v6, v7}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    aput-object v5, v4, v1

    goto :goto_1

    .line 200
    .end local v0    # "bytes":[B
    .end local v2    # "reason":Lorg/mortbay/io/Buffer;
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResponseLine(I)Lorg/mortbay/io/Buffer;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 209
    sget-object v0, Lorg/mortbay/jetty/HttpStatus;->__responseLine:[Lorg/mortbay/io/Buffer;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mortbay/jetty/HttpStatus;->__responseLine:[Lorg/mortbay/io/Buffer;

    aget-object v0, v0, p0

    goto :goto_0
.end method
