.class public final enum Lcom/csr/btsmart/BtSmartService$BtSmartUuid;
.super Ljava/lang/Enum;
.source "BtSmartService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/btsmart/BtSmartService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BtSmartUuid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/csr/btsmart/BtSmartService$BtSmartUuid;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum ALERT_LEVEL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum ALERT_NOTIFICATION_CONTROL_POINT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum ALERT_NOTIFICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum BATTERY_LEVEL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum BATTERY_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum BP_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum BP_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum CCC:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum CSC_CONTROL_POINT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum CSC_FEATURE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum CSC_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum CSC_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum DEVICE_INFORMATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum FIRMWARE_REVISION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum GATT_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum HARDWARE_REVISION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum HEART_RATE_LOCATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum HEART_RATE_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum HRP_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum IMMEDIATE_ALERT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum MANUFACTURER_NAME:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum MODEL_NUMBER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum NEW_ALERT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum NEW_ALERT_CATEGORY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum OTAU_APPLICATION_READCSBLOCK:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum OTAU_APPLICATION_READCSKEY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum OTAU_BOOTLOADER_SOFTWARE_VERSION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum OTAU_BOOTLOADER_TRANSFER_CONTROL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum OTAU_CSR_OTA_VERSION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum OTAU_CURRENT_APPLICATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum OTAU_DATA_TRANSFER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum OTAU_SERVICE_CHANGED:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum RSC_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum RSC_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum SC_CONTROL_POINT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum SENSOR_LOCATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum SERIAL_NUMBER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum SERVICE_CHANGED:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum SOFTWARE_REVISION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum UNREAD_ALERT_CATEGORY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field public static final enum UNREAD_ALERT_STATUS:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

.field private static final lookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/csr/btsmart/BtSmartService$BtSmartUuid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "OTAU_APPLICATION_SERVICE"

    const-string v3, "00001016-d102-11e1-9b23-00025b00a5a5"

    invoke-direct {v1, v2, v5, v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 65
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "OTAU_BOOTLOADER_SERVICE"

    const-string v3, "00001010-d102-11e1-9b23-00025b00a5a5"

    invoke-direct {v1, v2, v6, v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 66
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "OTAU_SERVICE_CHANGED"

    const-string v3, "00002a05-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v7, v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_SERVICE_CHANGED:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 67
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "OTAU_CSR_OTA_VERSION"

    const-string v3, "00001011-d102-11e1-9b23-00025b00a5a5"

    invoke-direct {v1, v2, v8, v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_CSR_OTA_VERSION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 68
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "OTAU_CURRENT_APPLICATION"

    const-string v3, "00001013-d102-11e1-9b23-00025b00a5a5"

    invoke-direct {v1, v2, v9, v3}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_CURRENT_APPLICATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 69
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "OTAU_BOOTLOADER_TRANSFER_CONTROL"

    const/4 v3, 0x5

    const-string v4, "00001015-d102-11e1-9b23-00025b00a5a5"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_TRANSFER_CONTROL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 70
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "OTAU_APPLICATION_READCSKEY"

    const/4 v3, 0x6

    const-string v4, "00001017-d102-11e1-9b23-00025b00a5a5"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_READCSKEY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 71
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "OTAU_APPLICATION_READCSBLOCK"

    const/4 v3, 0x7

    const-string v4, "00001018-d102-11e1-9b23-00025b00a5a5"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_READCSBLOCK:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 72
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "OTAU_DATA_TRANSFER"

    const/16 v3, 0x8

    const-string v4, "00001014-d102-11e1-9b23-00025b00a5a5"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_DATA_TRANSFER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 73
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "OTAU_BOOTLOADER_SOFTWARE_VERSION"

    const/16 v3, 0x9

    const-string v4, "00001019-d102-11e1-9b23-00025b00a5a5"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SOFTWARE_VERSION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 74
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "GATT_SERVICE"

    const/16 v3, 0xa

    const-string v4, "00001801-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->GATT_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 75
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "SERVICE_CHANGED"

    const/16 v3, 0xb

    const-string v4, "00002a05-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SERVICE_CHANGED:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 77
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "HRP_SERVICE"

    const/16 v3, 0xc

    const-string v4, "0000180d-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->HRP_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 78
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "HEART_RATE_MEASUREMENT"

    const/16 v3, 0xd

    const-string v4, "00002a37-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->HEART_RATE_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 79
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "HEART_RATE_LOCATION"

    const/16 v3, 0xe

    const-string v4, "00002a38-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->HEART_RATE_LOCATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 80
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "CCC"

    const/16 v3, 0xf

    const-string v4, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CCC:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 81
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "IMMEDIATE_ALERT"

    const/16 v3, 0x10

    const-string v4, "00001802-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->IMMEDIATE_ALERT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 82
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "ALERT_LEVEL"

    const/16 v3, 0x11

    const-string v4, "00002a06-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->ALERT_LEVEL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 83
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "ALERT_NOTIFICATION_SERVICE"

    const/16 v3, 0x12

    const-string v4, "00001811-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->ALERT_NOTIFICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 84
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "ALERT_NOTIFICATION_CONTROL_POINT"

    const/16 v3, 0x13

    const-string v4, "00002a44-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->ALERT_NOTIFICATION_CONTROL_POINT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 85
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "UNREAD_ALERT_STATUS"

    const/16 v3, 0x14

    const-string v4, "00002a45-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->UNREAD_ALERT_STATUS:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 86
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "NEW_ALERT"

    const/16 v3, 0x15

    const-string v4, "00002a46-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->NEW_ALERT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 87
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "NEW_ALERT_CATEGORY"

    const/16 v3, 0x16

    const-string v4, "00002a47-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->NEW_ALERT_CATEGORY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 88
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "UNREAD_ALERT_CATEGORY"

    const/16 v3, 0x17

    const-string v4, "00002a48-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->UNREAD_ALERT_CATEGORY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 89
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "DEVICE_INFORMATION_SERVICE"

    const/16 v3, 0x18

    const-string v4, "0000180a-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->DEVICE_INFORMATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 90
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "MANUFACTURER_NAME"

    const/16 v3, 0x19

    const-string v4, "00002A29-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->MANUFACTURER_NAME:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 91
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "MODEL_NUMBER"

    const/16 v3, 0x1a

    const-string v4, "00002a24-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->MODEL_NUMBER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 92
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "SERIAL_NUMBER"

    const/16 v3, 0x1b

    const-string v4, "00002a25-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SERIAL_NUMBER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 93
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "HARDWARE_REVISION"

    const/16 v3, 0x1c

    const-string v4, "00002a27-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->HARDWARE_REVISION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 94
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "FIRMWARE_REVISION"

    const/16 v3, 0x1d

    const-string v4, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->FIRMWARE_REVISION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 95
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "SOFTWARE_REVISION"

    const/16 v3, 0x1e

    const-string v4, "00002a28-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SOFTWARE_REVISION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 96
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "BATTERY_SERVICE"

    const/16 v3, 0x1f

    const-string v4, "0000180f-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->BATTERY_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 97
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "BATTERY_LEVEL"

    const/16 v3, 0x20

    const-string v4, "00002a19-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->BATTERY_LEVEL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 98
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "CSC_SERVICE"

    const/16 v3, 0x21

    const-string v4, "00001816-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CSC_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 99
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "CSC_MEASUREMENT"

    const/16 v3, 0x22

    const-string v4, "0002a5b-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CSC_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 100
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "CSC_FEATURE"

    const/16 v3, 0x23

    const-string v4, "00002a5c-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CSC_FEATURE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 101
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "SENSOR_LOCATION"

    const/16 v3, 0x24

    const-string v4, "00002a5d-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SENSOR_LOCATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 102
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "CSC_CONTROL_POINT"

    const/16 v3, 0x25

    const-string v4, "00002a55-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CSC_CONTROL_POINT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 103
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "RSC_SERVICE"

    const/16 v3, 0x26

    const-string v4, "00001814-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->RSC_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 104
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "RSC_MEASUREMENT"

    const/16 v3, 0x27

    const-string v4, "00002a53-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->RSC_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 105
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "SC_CONTROL_POINT"

    const/16 v3, 0x28

    const-string v4, "00002a55-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SC_CONTROL_POINT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 106
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "BP_SERVICE"

    const/16 v3, 0x29

    const-string v4, "00001810-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->BP_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 107
    new-instance v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    const-string v2, "BP_MEASUREMENT"

    const/16 v3, 0x2a

    const-string v4, "00002a35-0000-1000-8000-00805f9b34fb"

    invoke-direct {v1, v2, v3, v4}, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->BP_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 63
    const/16 v1, 0x2b

    new-array v1, v1, [Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v2, v1, v5

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v2, v1, v6

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_SERVICE_CHANGED:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v2, v1, v7

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_CSR_OTA_VERSION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v2, v1, v8

    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_CURRENT_APPLICATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_TRANSFER_CONTROL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_READCSKEY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_APPLICATION_READCSBLOCK:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_DATA_TRANSFER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->OTAU_BOOTLOADER_SOFTWARE_VERSION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->GATT_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SERVICE_CHANGED:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->HRP_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->HEART_RATE_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->HEART_RATE_LOCATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CCC:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->IMMEDIATE_ALERT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->ALERT_LEVEL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->ALERT_NOTIFICATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->ALERT_NOTIFICATION_CONTROL_POINT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->UNREAD_ALERT_STATUS:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->NEW_ALERT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->NEW_ALERT_CATEGORY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->UNREAD_ALERT_CATEGORY:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->DEVICE_INFORMATION_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->MANUFACTURER_NAME:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->MODEL_NUMBER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SERIAL_NUMBER:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->HARDWARE_REVISION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->FIRMWARE_REVISION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SOFTWARE_REVISION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->BATTERY_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->BATTERY_LEVEL:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CSC_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CSC_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CSC_FEATURE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SENSOR_LOCATION:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x25

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->CSC_CONTROL_POINT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x26

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->RSC_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->RSC_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x28

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->SC_CONTROL_POINT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->BP_SERVICE:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    sget-object v3, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->BP_MEASUREMENT:Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    aput-object v3, v1, v2

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->$VALUES:[Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->lookup:Ljava/util/HashMap;

    .line 128
    const-class v1, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "s":Lcom/csr/btsmart/BtSmartService$BtSmartUuid;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "s":Lcom/csr/btsmart/BtSmartService$BtSmartUuid;
    check-cast v0, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .line 129
    .restart local v0    # "s":Lcom/csr/btsmart/BtSmartService$BtSmartUuid;
    sget-object v2, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->lookup:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->value:Ljava/util/UUID;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->value:Ljava/util/UUID;

    .line 113
    return-void
.end method

.method static synthetic access$1600(Lcom/csr/btsmart/BtSmartService$BtSmartUuid;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->value:Ljava/util/UUID;

    return-object v0
.end method

.method public static get(Ljava/util/UUID;)Lcom/csr/btsmart/BtSmartService$BtSmartUuid;
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 140
    sget-object v0, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->lookup:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/csr/btsmart/BtSmartService$BtSmartUuid;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    return-object v0
.end method

.method public static values()[Lcom/csr/btsmart/BtSmartService$BtSmartUuid;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->$VALUES:[Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    invoke-virtual {v0}, [Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/csr/btsmart/BtSmartService$BtSmartUuid;

    return-object v0
.end method


# virtual methods
.method public getParcelable()Landroid/os/ParcelUuid;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->value:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/csr/btsmart/BtSmartService$BtSmartUuid;->value:Ljava/util/UUID;

    return-object v0
.end method
