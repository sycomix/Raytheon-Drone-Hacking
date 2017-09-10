.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
.super Ljava/lang/Object;
.source "ARDiscoveryDeviceNetService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;


# instance fields
.field private ip:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private port:I

.field private txtRecord:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "ARDiscoveryDeviceNetService"

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService$1;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService$1;-><init>()V

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->name:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->type:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->ip:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->port:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->name:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->type:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->ip:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->port:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->txtRecord:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "txtRecord"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->name:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->type:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->ip:Ljava/lang/String;

    .line 84
    iput p4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->port:I

    .line 85
    iput-object p5, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->txtRecord:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 101
    const/4 v1, 0x1

    .line 103
    .local v1, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v6, p1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    if-nez v6, :cond_2

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 195
    :cond_1
    :goto_0
    return v1

    .line 107
    :cond_2
    if-ne p1, p0, :cond_3

    .line 109
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move-object v3, p1

    .line 114
    check-cast v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    .line 116
    .local v3, "otherDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->txtRecord:Ljava/lang/String;

    if-nez v6, :cond_4

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 120
    :cond_4
    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->txtRecord:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v7

    if-ne v6, v7, :cond_5

    .line 122
    const/4 v1, 0x1

    goto :goto_0

    .line 124
    :cond_5
    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->txtRecord:Ljava/lang/String;

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    .line 126
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 130
    :cond_7
    const/4 v0, 0x0

    .line 131
    .local v0, "discoveryID":Ljava/lang/String;
    const/4 v4, 0x0

    .line 136
    .local v4, "otherDiscoveryID":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->txtRecord:Ljava/lang/String;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "jsonObject":Lorg/json/JSONObject;
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 140
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 152
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_8
    :goto_1
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getTxtRecord()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    .local v5, "otherJsonObject":Lorg/json/JSONObject;
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 156
    sget-object v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 171
    .end local v5    # "otherJsonObject":Lorg/json/JSONObject;
    :cond_9
    :goto_2
    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    .line 173
    if-eqz v0, :cond_a

    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 179
    :cond_a
    const/4 v1, 0x0

    goto :goto_0

    .line 185
    :cond_b
    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->name:Ljava/lang/String;

    iget-object v7, v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 189
    .end local v0    # "discoveryID":Ljava/lang/String;
    .end local v4    # "otherDiscoveryID":Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->name:Ljava/lang/String;

    iget-object v7, v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 191
    const/4 v1, 0x0

    goto :goto_0

    .line 159
    .restart local v0    # "discoveryID":Ljava/lang/String;
    .restart local v4    # "otherDiscoveryID":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 143
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->port:I

    return v0
.end method

.method public getTxtRecord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->txtRecord:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->ip:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->name:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->port:I

    .line 236
    return-void
.end method

.method public setTxtRecord(Ljava/lang/String;)V
    .locals 0
    .param p1, "txtRecord"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->txtRecord:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->type:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->txtRecord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    return-void
.end method
