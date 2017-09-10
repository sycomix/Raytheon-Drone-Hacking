.class public final enum Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
.super Ljava/lang/Enum;
.source "ARACADEMY_ERROR_ENUM.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_ALLOC:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_JNI:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_JNI_CALLBACK_LISTENER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_JNI_ENV:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_JNI_STRING_TO_CHAR_ARRAY:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_JNI_VM:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_MANAGER_AUTHENTICATION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_MANAGER_CALLBACK_CONTEXT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_MANAGER_JSON_PARSSING:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_MANAGER_OUTPUT_LENGTH:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_MANAGER_REQUEST_ID_NOT_FOUND:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_MODEL:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_MODEL_OUTPUT_LENGTH:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_MUTEX_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_REQUEST:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_REQUEST_AUTHENTICATION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_REQUEST_BAD_REQUEST:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_REQUEST_CANCELED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_REQUEST_CURL_PERFORM:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_REQUEST_HTTP_CODE:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_SYSTEM:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_UPLOADER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_UPLOADER_CANCELED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_UPLOADER_HTTP:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_UPLOADER_THREAD_ALREADY_RUNNING:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_ERROR_UPLOADER_WRONG_JSON_FORMAT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field public static final enum eARACADEMY_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

.field static valuesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final comment:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "eARACADEMY_ERROR_UNKNOWN_ENUM_VALUE"

    const/high16 v2, -0x80000000

    const-string v3, "Dummy value for all unknown cases"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->eARACADEMY_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 47
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_OK"

    const-string v2, "No error"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 49
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR"

    const/16 v2, -0x3e8

    const-string v3, "Unknown generic error"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 51
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_ALLOC"

    const/16 v2, -0x3e7

    const-string v3, "Memory allocation error"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_ALLOC:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 53
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_BAD_PARAMETER"

    const/16 v2, -0x3e6

    const-string v3, "Bad parameters"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 55
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_SYSTEM"

    const/4 v2, 0x5

    const/16 v3, -0x3e5

    const-string v4, "System error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_SYSTEM:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 57
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_MUTEX_INIT"

    const/4 v2, 0x6

    const/16 v3, -0x3e4

    const-string v4, "Mutex initialization error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MUTEX_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 59
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_REQUEST"

    const/4 v2, 0x7

    const/16 v3, -0x7d0

    const-string v4, "request error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 61
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_REQUEST_CANCELED"

    const/16 v2, 0x8

    const/16 v3, -0x7cf

    const-string/jumbo v4, "the request has be canceled"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CANCELED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 63
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_REQUEST_HTTP_CODE"

    const/16 v2, 0x9

    const/16 v3, -0x7ce

    const-string v4, "http return code not expected"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_HTTP_CODE:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 65
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_REQUEST_AUTHENTICATION"

    const/16 v2, 0xa

    const/16 v3, -0x7cd

    const-string v4, "bad authentication"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_AUTHENTICATION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 67
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_REQUEST_BAD_REQUEST"

    const/16 v2, 0xb

    const/16 v3, -0x7cc

    const-string v4, "bad request"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_BAD_REQUEST:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 69
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_REQUEST_CONNECTION"

    const/16 v2, 0xc

    const/16 v3, -0x7cb

    const-string v4, "Couldn\'t connect to server"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 71
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_REQUEST_CURL_PERFORM"

    const/16 v2, 0xd

    const/16 v3, -0x7ca

    const-string v4, "curl perform generic error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CURL_PERFORM:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 73
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED"

    const/16 v2, 0xe

    const/16 v3, -0x7c9

    const-string v4, "curl perform precondition failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 75
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_MANAGER"

    const/16 v2, 0xf

    const/16 v3, -0xbb8

    const-string v4, "manager error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 77
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_MANAGER_INIT"

    const/16 v2, 0x10

    const/16 v3, -0xbb7

    const-string v4, "manager is not correctly initialized"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 79
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_MANAGER_REQUEST_ID_NOT_FOUND"

    const/16 v2, 0x11

    const/16 v3, -0xbb6

    const-string v4, "request ID not found"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_REQUEST_ID_NOT_FOUND:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 81
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_MANAGER_CALLBACK_CONTEXT"

    const/16 v2, 0x12

    const/16 v3, -0xbb5

    const-string v4, "bad context in callback"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_CALLBACK_CONTEXT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 83
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_MANAGER_OUTPUT_LENGTH"

    const/16 v2, 0x13

    const/16 v3, -0xbb4

    const-string/jumbo v4, "the length of the output is to small"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_OUTPUT_LENGTH:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 85
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_MANAGER_AUTHENTICATION"

    const/16 v2, 0x14

    const/16 v3, -0xbb3

    const-string v4, "no authenticated user"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_AUTHENTICATION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 87
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_MANAGER_JSON_PARSSING"

    const/16 v2, 0x15

    const/16 v3, -0xbb2

    const-string v4, "error durring the parsing of a json"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_JSON_PARSSING:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 89
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_JNI"

    const/16 v2, 0x16

    const/16 v3, -0xfa0

    const-string v4, "JNI error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_JNI:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 91
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_JNI_VM"

    const/16 v2, 0x17

    const/16 v3, -0xf9f

    const-string v4, "JNI virtual machine, not initialized"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_JNI_VM:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 93
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_JNI_ENV"

    const/16 v2, 0x18

    const/16 v3, -0xf9e

    const-string v4, "null JNI environment"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_JNI_ENV:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 95
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_JNI_CALLBACK_LISTENER"

    const/16 v2, 0x19

    const/16 v3, -0xf9d

    const-string v4, "null jni callback listener"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_JNI_CALLBACK_LISTENER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 97
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_JNI_STRING_TO_CHAR_ARRAY"

    const/16 v2, 0x1a

    const/16 v3, -0xf9c

    const-string v4, "error in jni during conversion to String to char*"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_JNI_STRING_TO_CHAR_ARRAY:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 99
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_MODEL"

    const/16 v2, 0x1b

    const/16 v3, -0x1388

    const-string v4, "model error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MODEL:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 101
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_MODEL_OUTPUT_LENGTH"

    const/16 v2, 0x1c

    const/16 v3, -0x1387

    const-string/jumbo v4, "the length of the output is to small"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MODEL_OUTPUT_LENGTH:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 103
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_UPLOADER"

    const/16 v2, 0x1d

    const/16 v3, -0x1770

    const-string/jumbo v4, "uploader error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 105
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_UPLOADER_WRONG_JSON_FORMAT"

    const/16 v2, 0x1e

    const/16 v3, -0x176f

    const-string/jumbo v4, "the file data is wrongly formatted"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER_WRONG_JSON_FORMAT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 107
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_UPLOADER_CANCELED"

    const/16 v2, 0x1f

    const/16 v3, -0x176e

    const-string/jumbo v4, "uploader thread canceled"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER_CANCELED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 109
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_UPLOADER_THREAD_ALREADY_RUNNING"

    const/16 v2, 0x20

    const/16 v3, -0x176d

    const-string/jumbo v4, "uploader thread already running"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER_THREAD_ALREADY_RUNNING:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 111
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    const-string v1, "ARACADEMY_ERROR_UPLOADER_HTTP"

    const/16 v2, 0x21

    const/16 v3, -0x176c

    const-string/jumbo v4, "uploader HTTP error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER_HTTP:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 43
    const/16 v0, 0x22

    new-array v0, v0, [Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->eARACADEMY_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_ALLOC:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_SYSTEM:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MUTEX_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CANCELED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_HTTP_CODE:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_AUTHENTICATION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_BAD_REQUEST:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CURL_PERFORM:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_PRECONDITION_FAILED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_INIT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_REQUEST_ID_NOT_FOUND:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_CALLBACK_CONTEXT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_OUTPUT_LENGTH:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_AUTHENTICATION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_JSON_PARSSING:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_JNI:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_JNI_VM:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_JNI_ENV:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_JNI_CALLBACK_LISTENER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_JNI_STRING_TO_CHAR_ARRAY:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MODEL:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MODEL_OUTPUT_LENGTH:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER_WRONG_JSON_FORMAT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER_CANCELED:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER_THREAD_ALREADY_RUNNING:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER_HTTP:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->$VALUES:[Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->value:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput p3, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->value:I

    .line 124
    iput-object p4, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 141
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 142
    invoke-static {}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->values()[Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v2

    .line 143
    .local v2, "valuesArray":[Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    .line 144
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 145
    .local v0, "entry":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    sget-object v5, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "entry":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .end local v2    # "valuesArray":[Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :cond_0
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->valuesList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 149
    .local v1, "retVal":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    if-nez v1, :cond_1

    .line 150
    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->eARACADEMY_ERROR_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 152
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->$VALUES:[Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->comment:Ljava/lang/String;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
