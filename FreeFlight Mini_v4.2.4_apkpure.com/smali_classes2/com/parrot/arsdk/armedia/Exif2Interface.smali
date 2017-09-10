.class public Lcom/parrot/arsdk/armedia/Exif2Interface;
.super Ljava/lang/Object;
.source "Exif2Interface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    }
.end annotation


# static fields
.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArray:[B

.field private mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/parrot/arsdk/armedia/Exif2Interface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/armedia/Exif2Interface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mFilename:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mArray:[B

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mAttributes:Ljava/util/Map;

    .line 128
    invoke-direct {p0}, Lcom/parrot/arsdk/armedia/Exif2Interface;->loadAttributes()V

    .line 129
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mFilename:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mArray:[B

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mAttributes:Ljava/util/Map;

    .line 136
    invoke-direct {p0}, Lcom/parrot/arsdk/armedia/Exif2Interface;->loadAttributes()V

    .line 137
    return-void
.end method

.method public static handleOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 365
    const/4 v2, 0x0

    .line 367
    .local v2, "orientation":I
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/armedia/Exif2Interface;

    invoke-direct {v1, p1}, Lcom/parrot/arsdk/armedia/Exif2Interface;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "exif":Lcom/parrot/arsdk/armedia/Exif2Interface;
    sget-object v4, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->ORIENTATION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    invoke-virtual {v1, v4}, Lcom/parrot/arsdk/armedia/Exif2Interface;->getAttribute(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "orientationstr":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 371
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 378
    .end local v1    # "exif":Lcom/parrot/arsdk/armedia/Exif2Interface;
    .end local v3    # "orientationstr":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p0, v2}, Lcom/parrot/arsdk/armedia/Exif2Interface;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 373
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static handleOrientation(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "array"    # [B

    .prologue
    .line 383
    const/4 v2, 0x0

    .line 385
    .local v2, "orientation":I
    :try_start_0
    new-instance v1, Lcom/parrot/arsdk/armedia/Exif2Interface;

    invoke-direct {v1, p1}, Lcom/parrot/arsdk/armedia/Exif2Interface;-><init>([B)V

    .line 386
    .local v1, "exif":Lcom/parrot/arsdk/armedia/Exif2Interface;
    sget-object v4, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->ORIENTATION:Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    invoke-virtual {v1, v4}, Lcom/parrot/arsdk/armedia/Exif2Interface;->getAttribute(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "orientationstr":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 389
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 396
    .end local v1    # "exif":Lcom/parrot/arsdk/armedia/Exif2Interface;
    .end local v3    # "orientationstr":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p0, v2}, Lcom/parrot/arsdk/armedia/Exif2Interface;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 391
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized loadAttributes()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    monitor-enter p0

    const/4 v5, 0x0

    .line 179
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0}, Lcom/parrot/arsdk/armedia/Exif2Interface;->openInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 180
    const/4 v11, 0x0

    invoke-static {v5, v11}, Lorg/apache/sanselan/Sanselan;->getMetadata(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v6

    check-cast v6, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    :try_end_0
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .local v6, "metadata":Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    if-eqz v5, :cond_0

    .line 186
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 190
    :cond_0
    if-eqz v6, :cond_5

    .line 191
    invoke-static {}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->values()[Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    move-result-object v8

    .line 192
    .local v8, "supportedTags":[Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    array-length v7, v8

    .line 194
    .local v7, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_5

    .line 195
    aget-object v9, v8, v3

    .line 196
    .local v9, "tag":Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    invoke-static {v9}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$000(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 197
    .local v2, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-eqz v2, :cond_2

    .line 199
    const/4 v10, 0x0

    .line 201
    .local v10, "value":Ljava/lang/String;
    :try_start_2
    invoke-static {v9}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$100(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    move-result-object v11

    sget-object v12, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;
    :try_end_2
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v11, v12, :cond_4

    .line 204
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    .line 218
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    .line 219
    :try_start_4
    iget-object v11, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mAttributes:Ljava/util/Map;

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    .end local v10    # "value":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v2    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    .end local v3    # "i":I
    .end local v6    # "metadata":Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    .end local v7    # "size":I
    .end local v8    # "supportedTags":[Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .end local v9    # "tag":Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e1":Lorg/apache/sanselan/ImageReadException;
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/sanselan/ImageReadException;->printStackTrace()V

    .line 183
    new-instance v11, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/apache/sanselan/ImageReadException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    .end local v1    # "e1":Lorg/apache/sanselan/ImageReadException;
    :catchall_0
    move-exception v11

    if-eqz v5, :cond_3

    .line 186
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 177
    :catchall_1
    move-exception v11

    monitor-exit p0

    throw v11

    .line 206
    .restart local v2    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    .restart local v3    # "i":I
    .restart local v6    # "metadata":Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    .restart local v7    # "size":I
    .restart local v8    # "supportedTags":[Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .restart local v9    # "tag":Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .restart local v10    # "value":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 210
    .local v4, "integerException":Ljava/lang/ClassCastException;
    :try_start_7
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v10

    goto :goto_1

    .line 215
    .end local v4    # "integerException":Ljava/lang/ClassCastException;
    :cond_4
    :try_start_8
    invoke-static {v9}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$100(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    move-result-object v11

    sget-object v12, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    if-ne v11, v12, :cond_1

    .line 216
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getStringValue()Ljava/lang/String;
    :try_end_8
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v10

    goto :goto_1

    .line 220
    :catch_2
    move-exception v0

    .line 221
    .local v0, "e":Lorg/apache/sanselan/ImageReadException;
    :try_start_9
    invoke-virtual {v0}, Lorg/apache/sanselan/ImageReadException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 226
    .end local v0    # "e":Lorg/apache/sanselan/ImageReadException;
    .end local v2    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    .end local v3    # "i":I
    .end local v7    # "size":I
    .end local v8    # "supportedTags":[Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .end local v9    # "tag":Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .end local v10    # "value":Ljava/lang/String;
    :cond_5
    monitor-exit p0

    return-void

    .line 212
    .restart local v2    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    .restart local v3    # "i":I
    .restart local v4    # "integerException":Ljava/lang/ClassCastException;
    .restart local v7    # "size":I
    .restart local v8    # "supportedTags":[Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .restart local v9    # "tag":Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .restart local v10    # "value":Ljava/lang/String;
    :catch_3
    move-exception v11

    goto :goto_1
.end method

.method private openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/parrot/arsdk/armedia/Exif2Interface;->onOpenStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 334
    const/4 v5, 0x0

    .line 335
    .local v5, "matrix":Landroid/graphics/Matrix;
    packed-switch p1, :pswitch_data_0

    .line 359
    .end local p0    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    :pswitch_0
    return-object p0

    .line 346
    .restart local p0    # "bmp":Landroid/graphics/Bitmap;
    :pswitch_1
    new-instance v5, Landroid/graphics/Matrix;

    .end local v5    # "matrix":Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 347
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 348
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 350
    :pswitch_2
    new-instance v5, Landroid/graphics/Matrix;

    .end local v5    # "matrix":Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 351
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 352
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 354
    :pswitch_3
    new-instance v5, Landroid/graphics/Matrix;

    .end local v5    # "matrix":Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 355
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 356
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAttribute(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onOpenStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, "is":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 152
    iget-object v4, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mFilename:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "connection":Ljava/net/URLConnection;
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/io/BufferedInputStream;

    .end local v1    # "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 167
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v3    # "url":Ljava/net/URL;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 158
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "srcFile":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedInputStream;

    .end local v1    # "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 162
    .end local v2    # "srcFile":Ljava/io/File;
    :cond_2
    iget-object v4, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mArray:[B

    if-eqz v4, :cond_0

    .line 164
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1    # "is":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mArray:[B

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public declared-synchronized saveAttributes()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mFilename:Ljava/lang/String;

    move-object/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v19, :cond_1

    .line 330
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 266
    :cond_1
    :try_start_1
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mFilename:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    .local v18, "srcFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 270
    .local v12, "os":Ljava/io/OutputStream;
    const/4 v15, 0x0

    .line 272
    .local v15, "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    :try_start_2
    invoke-static/range {v18 .. v18}, Lorg/apache/sanselan/Sanselan;->getMetadata(Ljava/io/File;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v10

    check-cast v10, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;

    .line 273
    .local v10, "metadata":Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    if-eqz v10, :cond_a

    .line 274
    invoke-virtual {v10}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->getExif()Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    move-result-object v6

    .line 275
    .local v6, "exif":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;
    if-eqz v6, :cond_a

    .line 276
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->getOutputSet()Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    :try_end_2
    .catch Lorg/apache/sanselan/SanselanException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    move-object/from16 v16, v15

    .line 280
    .end local v6    # "exif":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;
    .end local v15    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .local v16, "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    :goto_1
    if-nez v16, :cond_9

    .line 281
    :try_start_3
    new-instance v15, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;

    invoke-direct {v15}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;-><init>()V
    :try_end_3
    .catch Lorg/apache/sanselan/SanselanException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    .end local v16    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .restart local v15    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mAttributes:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_8

    .line 285
    invoke-virtual {v15}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getRootDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v17

    .line 286
    .local v17, "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mAttributes:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 287
    .local v9, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;

    .line 289
    .local v8, "key":Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    invoke-static {v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$000(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v7

    .line 290
    .local v7, "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    if-eqz v7, :cond_3

    .line 291
    invoke-static {v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$000(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->removeField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 294
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mAttributes:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 295
    .local v4, "data":Ljava/lang/String;
    const/4 v3, 0x0

    .line 296
    .local v3, "bytes":[B
    invoke-static {v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$100(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    move-result-object v20

    sget-object v21, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 297
    invoke-static {v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$000(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-result-object v20

    invoke-static {v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$100(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    move-result-object v21

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget v0, v15, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    move/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->encodeValue(Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;I)[B

    move-result-object v3

    .line 302
    :cond_4
    :goto_4
    if-eqz v3, :cond_2

    .line 303
    new-instance v14, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    invoke-static {v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$000(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-result-object v20

    invoke-static {v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$100(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    move-result-object v21

    array-length v0, v3

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v14, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 304
    .local v14, "outputField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-static {v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$000(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)V

    .line 305
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V
    :try_end_4
    .catch Lorg/apache/sanselan/SanselanException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 319
    .end local v3    # "bytes":[B
    .end local v4    # "data":Ljava/lang/String;
    .end local v7    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v8    # "key":Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;>;"
    .end local v10    # "metadata":Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    .end local v14    # "outputField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v17    # "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :catch_0
    move-exception v5

    .line 320
    .local v5, "e":Lorg/apache/sanselan/SanselanException;
    :goto_5
    :try_start_5
    invoke-virtual {v5}, Lorg/apache/sanselan/SanselanException;->printStackTrace()V

    .line 321
    new-instance v19, Ljava/io/IOException;

    invoke-direct/range {v19 .. v19}, Ljava/io/IOException;-><init>()V

    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 326
    .end local v5    # "e":Lorg/apache/sanselan/SanselanException;
    .end local v15    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    :catchall_0
    move-exception v19

    :goto_6
    if-eqz v12, :cond_5

    .line 327
    :try_start_6
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    :cond_5
    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 262
    .end local v12    # "os":Ljava/io/OutputStream;
    .end local v18    # "srcFile":Ljava/io/File;
    :catchall_1
    move-exception v19

    monitor-exit p0

    throw v19

    .line 298
    .restart local v3    # "bytes":[B
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v7    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .restart local v8    # "key":Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;>;"
    .restart local v10    # "metadata":Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    .restart local v12    # "os":Ljava/io/OutputStream;
    .restart local v15    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .restart local v17    # "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .restart local v18    # "srcFile":Ljava/io/File;
    :cond_6
    :try_start_7
    invoke-static {v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$100(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    move-result-object v20

    sget-object v21, Lorg/apache/sanselan/formats/tiff/constants/TiffFieldTypeConstants;->FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 299
    invoke-static {v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$000(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-result-object v20

    invoke-static {v8}, Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;->access$100(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;)Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    move-result-object v21

    iget v0, v15, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->encodeValue(Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;I)[B

    move-result-object v3

    goto :goto_4

    .line 308
    .end local v3    # "bytes":[B
    .end local v4    # "data":Ljava/lang/String;
    .end local v7    # "field":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v8    # "key":Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    :cond_7
    const-string v19, "exif"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v11

    .line 309
    .local v11, "metadataFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 311
    new-instance v13, Ljava/io/BufferedOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Lorg/apache/sanselan/SanselanException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 312
    .end local v12    # "os":Ljava/io/OutputStream;
    .local v13, "os":Ljava/io/OutputStream;
    :try_start_8
    new-instance v19, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;

    invoke-direct/range {v19 .. v19}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13, v15}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossless(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 313
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Lorg/apache/sanselan/SanselanException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 314
    const/4 v12, 0x0

    .line 316
    .end local v13    # "os":Ljava/io/OutputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 317
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_9
    .catch Lorg/apache/sanselan/SanselanException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 326
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;>;"
    .end local v11    # "metadataFile":Ljava/io/File;
    .end local v17    # "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :cond_8
    if-eqz v12, :cond_0

    .line 327
    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 322
    .end local v10    # "metadata":Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    :catch_1
    move-exception v5

    .line 323
    .local v5, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 326
    if-eqz v12, :cond_0

    .line 327
    :try_start_c
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 326
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;>;"
    .restart local v10    # "metadata":Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    .restart local v11    # "metadataFile":Ljava/io/File;
    .restart local v13    # "os":Ljava/io/OutputStream;
    .restart local v17    # "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :catchall_2
    move-exception v19

    move-object v12, v13

    .end local v13    # "os":Ljava/io/OutputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    goto :goto_6

    .line 322
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;>;"
    .end local v11    # "metadataFile":Ljava/io/File;
    .end local v15    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .end local v17    # "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .restart local v16    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    :catch_2
    move-exception v5

    move-object/from16 v15, v16

    .end local v16    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .restart local v15    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    goto :goto_7

    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;>;"
    .restart local v11    # "metadataFile":Ljava/io/File;
    .restart local v13    # "os":Ljava/io/OutputStream;
    .restart local v17    # "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :catch_3
    move-exception v5

    move-object v12, v13

    .end local v13    # "os":Ljava/io/OutputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    goto :goto_7

    .line 319
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;>;"
    .end local v11    # "metadataFile":Ljava/io/File;
    .end local v15    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .end local v17    # "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .restart local v16    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    :catch_4
    move-exception v5

    move-object/from16 v15, v16

    .end local v16    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .restart local v15    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    goto/16 :goto_5

    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;>;"
    .restart local v11    # "metadataFile":Ljava/io/File;
    .restart local v13    # "os":Ljava/io/OutputStream;
    .restart local v17    # "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    :catch_5
    move-exception v5

    move-object v12, v13

    .end local v13    # "os":Ljava/io/OutputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    goto/16 :goto_5

    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;>;"
    .end local v11    # "metadataFile":Ljava/io/File;
    .end local v15    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .end local v17    # "rootDirectory":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .restart local v16    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    :cond_9
    move-object/from16 v15, v16

    .end local v16    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .restart local v15    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    goto/16 :goto_2

    :cond_a
    move-object/from16 v16, v15

    .end local v15    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .restart local v16    # "outputSet":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    goto/16 :goto_1
.end method

.method public setAttribute(Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Lcom/parrot/arsdk/armedia/Exif2Interface$Tag;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/parrot/arsdk/armedia/Exif2Interface;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method
