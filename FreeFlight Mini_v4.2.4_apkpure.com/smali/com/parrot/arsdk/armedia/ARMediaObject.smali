.class public Lcom/parrot/arsdk/armedia/ARMediaObject;
.super Ljava/lang/Object;
.source "ARMediaObject.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/parrot/arsdk/armedia/ARMediaObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/arsdk/armedia/ARMediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public date:Ljava/lang/String;

.field private dateFormater:Ljava/text/SimpleDateFormat;

.field public filePath:Ljava/lang/String;

.field public media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

.field public mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

.field public name:Ljava/lang/String;

.field public product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field public productId:Ljava/lang/String;

.field public runDate:Ljava/lang/String;

.field public size:F

.field public thumbnail:Landroid/graphics/drawable/Drawable;

.field public uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->TAG:Ljava/lang/String;

    .line 238
    new-instance v0, Lcom/parrot/arsdk/armedia/ARMediaObject$1;

    invoke-direct {v0}, Lcom/parrot/arsdk/armedia/ARMediaObject$1;-><init>()V

    sput-object v0, Lcom/parrot/arsdk/armedia/ARMediaObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->size:F

    .line 83
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 84
    iput-object v1, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;

    .line 86
    iput-object v1, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->runDate:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_MAX:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    .line 88
    iput-object v1, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    .line 89
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "aInputStream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->runDate:Ljava/lang/String;

    .line 319
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 320
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->uuid:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->size:F

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;

    .line 327
    invoke-static {}, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->values()[Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    .line 328
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "aOutputStream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->runDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->runDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 349
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 358
    :goto_1
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 367
    :goto_2
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 376
    :goto_3
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 385
    :goto_4
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 394
    :goto_5
    iget v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->size:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 395
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 396
    return-void

    .line 343
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 364
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    .line 373
    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    .line 382
    :cond_4
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_4

    .line 391
    :cond_5
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_5
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 215
    .local v2, "model":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-object v2, v0

    .line 217
    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->runDate:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->runDate:Ljava/lang/String;

    .line 218
    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v3, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 219
    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    .line 220
    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    .line 221
    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    .line 222
    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    .line 223
    iget v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->size:F

    iput v3, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->size:F

    .line 224
    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;

    .line 225
    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    iput-object v3, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    .line 226
    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->uuid:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->uuid:Ljava/lang/String;

    .line 227
    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    iput-object v3, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-object v2

    .line 229
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public compareTo(Lcom/parrot/arsdk/armedia/ARMediaObject;)I
    .locals 6
    .param p1, "obj"    # Lcom/parrot/arsdk/armedia/ARMediaObject;

    .prologue
    .line 289
    iget-object v4, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->dateFormater:Ljava/text/SimpleDateFormat;

    if-nez v4, :cond_0

    .line 291
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd\'T\'HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->dateFormater:Ljava/text/SimpleDateFormat;

    .line 294
    :cond_0
    const/4 v3, 0x0

    .line 297
    .local v3, "retVal":I
    :try_start_0
    iget-object v4, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->dateFormater:Ljava/text/SimpleDateFormat;

    iget-object v5, p1, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 298
    .local v0, "dateObj1":Ljava/util/Date;
    iget-object v4, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->dateFormater:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 299
    .local v1, "dateObj2":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 301
    const/4 v3, -0x1

    .line 313
    .end local v0    # "dateObj1":Ljava/util/Date;
    .end local v1    # "dateObj2":Ljava/util/Date;
    :cond_1
    :goto_0
    return v3

    .line 303
    .restart local v0    # "dateObj1":Ljava/util/Date;
    .restart local v1    # "dateObj2":Ljava/util/Date;
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 305
    const/4 v3, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "dateObj1":Ljava/util/Date;
    .end local v1    # "dateObj2":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 310
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 60
    check-cast p1, Lcom/parrot/arsdk/armedia/ARMediaObject;

    invoke-virtual {p0, p1}, Lcom/parrot/arsdk/armedia/ARMediaObject;->compareTo(Lcom/parrot/arsdk/armedia/ARMediaObject;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getRunDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->runDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->size:F

    return v0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public updateDataTransferMedia(Landroid/content/res/Resources;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)V
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "media"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    .prologue
    const/4 v5, 0x0

    .line 93
    if-eqz p2, :cond_0

    .line 95
    iput-object p2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    .line 96
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    .line 97
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getDate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    .line 99
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getSize()F

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->size:F

    .line 100
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getUUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->uuid:Ljava/lang/String;

    .line 102
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 103
    const-string v2, "%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->productId:Ljava/lang/String;

    .line 105
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getThumbnail()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getThumbnail()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    .local v1, "thumbnailBmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getThumbnail()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/armedia/Exif2Interface;->handleOrientation(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;

    .line 114
    .end local v1    # "thumbnailBmp":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "extension":Ljava/lang/String;
    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    sget-object v2, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_PHOTO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    iput-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    .line 131
    .end local v0    # "extension":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 122
    .restart local v0    # "extension":Ljava/lang/String;
    :cond_2
    const-string v2, "mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    sget-object v2, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    iput-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    goto :goto_0

    .line 126
    :cond_3
    const-string v2, "mov"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    sget-object v2, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_VIDEO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    iput-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    goto :goto_0
.end method

.method public updateThumbnailWithDataTransferMedia(Landroid/content/res/Resources;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)V
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "media"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    .prologue
    .line 135
    iput-object p2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    .line 136
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getThumbnail()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getThumbnail()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, "thumbnailBmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;->getThumbnail()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/armedia/Exif2Interface;->handleOrientation(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;

    .line 143
    :cond_0
    return-void
.end method

.method public updateThumbnailWithUrl(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "assetUrl"    # Ljava/lang/String;

    .prologue
    .line 150
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 151
    .local v1, "imgInput":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->thumbnail:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "imgInput":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->runDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->product:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->size:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 282
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 285
    return-void
.end method
