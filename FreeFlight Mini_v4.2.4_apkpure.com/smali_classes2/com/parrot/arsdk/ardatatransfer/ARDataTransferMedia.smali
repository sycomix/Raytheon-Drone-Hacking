.class public Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
.super Ljava/lang/Object;
.source "ARDataTransferMedia.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;",
            ">;"
        }
    .end annotation
.end field

.field private static final HASH_FIELD:I = 0x1f

.field private static final HASH_START:I = 0x11

.field private static final TAG:Ljava/lang/String; = "ARDataTransferMedia"


# instance fields
.field private date:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field private remotePath:Ljava/lang/String;

.field private remoteThumb:Ljava/lang/String;

.field private size:F

.field private thumbnail:[B

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia$1;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia$1;-><init>()V

    sput-object v0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F[B)V
    .locals 2
    .param p1, "productValue"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/String;
    .param p5, "uuid"    # Ljava/lang/String;
    .param p6, "remotePath"    # Ljava/lang/String;
    .param p7, "remoteThumb"    # Ljava/lang/String;
    .param p8, "size"    # F
    .param p9, "thumbnail"    # [B

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 55
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->name:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->filePath:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->date:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->uuid:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remotePath:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remoteThumb:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->size:F

    .line 62
    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->thumbnail:[B

    .line 79
    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 80
    iput-object p2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->name:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->filePath:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->date:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->uuid:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remotePath:Ljava/lang/String;

    .line 85
    iput-object p7, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remoteThumb:Ljava/lang/String;

    .line 86
    iput p8, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->size:F

    .line 87
    iput-object p9, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->thumbnail:[B

    .line 88
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 55
    iput-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->name:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->filePath:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->date:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->uuid:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remotePath:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remoteThumb:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->size:F

    .line 62
    iput-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->thumbnail:[B

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 93
    invoke-static {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->name:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->filePath:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->date:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->uuid:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remotePath:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remoteThumb:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->size:F

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .local v0, "thumbnailSize":I
    if-lez v0, :cond_0

    .line 103
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->thumbnail:[B

    .line 104
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->thumbnail:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 106
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static readString(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 151
    .local v0, "presentByte":B
    if-lez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static writeString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 160
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "isEqual":Z
    if-nez p1, :cond_1

    .line 283
    const/4 v0, 0x0

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    if-ne p1, p0, :cond_2

    .line 287
    const/4 v0, 0x1

    goto :goto_0

    .line 289
    :cond_2
    instance-of v2, p1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    if-nez v2, :cond_3

    .line 291
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 295
    check-cast v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    .line 297
    .local v1, "otherMedia":Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getProductValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getProductValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 298
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->filePath:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 299
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remotePath:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 300
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getRemotePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remotePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remotePath:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getRemotePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remoteThumb:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 301
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getRemoteThumb()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remoteThumb:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remoteThumb:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getRemoteThumb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_b
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->date:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 302
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->date:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->date:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_d
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->uuid:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 303
    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getUUID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->uuid:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->uuid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method public getProductValue()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v0

    return v0
.end method

.method public getRemotePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remotePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteThumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remoteThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->size:F

    return v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->thumbnail:[B

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 316
    const/16 v0, 0x11

    .line 319
    .local v0, "result":I
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 320
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 321
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->filePath:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 322
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->date:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 323
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->uuid:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 324
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remotePath:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 325
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remoteThumb:Ljava/lang/String;

    if-nez v3, :cond_5

    :goto_5
    add-int v0, v1, v2

    .line 327
    return v0

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->uuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 324
    :cond_4
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remotePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    .line 325
    :cond_5
    iget-object v2, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remoteThumb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5
.end method

.method public setThumbail([B)V
    .locals 1
    .param p1, "rawData"    # [B

    .prologue
    .line 274
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->thumbnail:[B

    .line 275
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 111
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->name:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->filePath:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->date:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->uuid:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remotePath:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->remoteThumb:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 118
    iget v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->size:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 119
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->thumbnail:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->thumbnail:[B

    array-length v0, v1

    .line 120
    .local v0, "thumbnailSize":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    if-lez v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->thumbnail:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    :cond_0
    return-void

    .line 119
    .end local v0    # "thumbnailSize":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
