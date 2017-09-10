.class final Lcom/parrot/arsdk/armedia/ARMediaObject$1;
.super Ljava/lang/Object;
.source "ARMediaObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/armedia/ARMediaObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/parrot/arsdk/armedia/ARMediaObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/parrot/arsdk/armedia/ARMediaObject;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .line 242
    new-instance v0, Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-direct {v0}, Lcom/parrot/arsdk/armedia/ARMediaObject;-><init>()V

    .line 244
    .local v0, "object":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->runDate:Ljava/lang/String;

    .line 245
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->size:F

    .line 250
    iput-object v3, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;

    .line 251
    invoke-static {}, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->values()[Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->uuid:Ljava/lang/String;

    .line 253
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    iput-object v1, v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    .line 254
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/parrot/arsdk/armedia/ARMediaObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/parrot/arsdk/armedia/ARMediaObject;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 261
    new-array v0, p1, [Lcom/parrot/arsdk/armedia/ARMediaObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/parrot/arsdk/armedia/ARMediaObject$1;->newArray(I)[Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v0

    return-object v0
.end method
