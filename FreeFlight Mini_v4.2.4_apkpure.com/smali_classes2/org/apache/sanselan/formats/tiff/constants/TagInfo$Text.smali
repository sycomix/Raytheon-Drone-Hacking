.class public final Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;
.super Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
.source "TagInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Text"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;
    }
.end annotation


# static fields
.field private static final TEXT_ENCODINGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

.field private static final TEXT_ENCODING_ASCII:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

.field private static final TEXT_ENCODING_JIS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

.field private static final TEXT_ENCODING_UNDEFINED:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

.field private static final TEXT_ENCODING_UNICODE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 265
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_ASCII:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    .line 269
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "JIS"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_JIS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    .line 273
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_UNICODE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    .line 278
    new-instance v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_UNDEFINED:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    .line 283
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_ASCII:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_JIS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_UNICODE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_UNDEFINED:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODINGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    return-void

    .line 265
    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 269
    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 273
    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data

    .line 278
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;ILorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # I
    .param p3, "dataType"    # Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .param p4, "length"    # I
    .param p5, "exifDirectory"    # Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .prologue
    .line 239
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;ILorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;ILorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # I
    .param p3, "dataTypes"    # [Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .param p4, "length"    # I
    .param p5, "exifDirectory"    # Lorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;

    .prologue
    .line 245
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;-><init>(Ljava/lang/String;I[Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;ILorg/apache/sanselan/formats/tiff/constants/TiffDirectoryConstants$ExifDirectoryType;)V

    .line 246
    return-void
.end method


# virtual methods
.method public encodeValue(Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;I)[B
    .locals 10
    .param p1, "fieldType"    # Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 293
    instance-of v6, p2, Ljava/lang/String;

    if-nez v6, :cond_0

    .line 294
    new-instance v6, Lorg/apache/sanselan/ImageWriteException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Text value not String: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {p2}, Lorg/apache/sanselan/util/Debug;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v4, p2

    .line 296
    check-cast v4, Ljava/lang/String;

    .line 301
    .local v4, "s":Ljava/lang/String;
    :try_start_0
    sget-object v6, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_ASCII:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    iget-object v6, v6, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 303
    .local v0, "asciiBytes":[B
    new-instance v1, Ljava/lang/String;

    sget-object v6, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_ASCII:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    iget-object v6, v6, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-direct {v1, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 305
    .local v1, "decodedAscii":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    array-length v6, v0

    sget-object v7, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_ASCII:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    iget-object v7, v7, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    array-length v7, v7

    add-int/2addr v6, v7

    new-array v3, v6, [B

    .line 310
    .local v3, "result":[B
    sget-object v6, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_ASCII:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    iget-object v6, v6, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_ASCII:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    iget-object v9, v9, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    array-length v9, v9

    invoke-static {v6, v7, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    const/4 v6, 0x0

    sget-object v7, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_ASCII:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    iget-object v7, v7, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    array-length v7, v7

    array-length v8, v0

    invoke-static {v0, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    :goto_0
    return-object v3

    .line 320
    .end local v3    # "result":[B
    :cond_1
    sget-object v6, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_UNICODE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    iget-object v6, v6, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 322
    .local v5, "unicodeBytes":[B
    array-length v6, v5

    sget-object v7, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_UNICODE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    iget-object v7, v7, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    array-length v7, v7

    add-int/2addr v6, v7

    new-array v3, v6, [B

    .line 324
    .restart local v3    # "result":[B
    sget-object v6, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_UNICODE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    iget-object v6, v6, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_UNICODE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    iget-object v9, v9, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    array-length v9, v9

    invoke-static {v6, v7, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    const/4 v6, 0x0

    sget-object v7, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODING_UNICODE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    iget-object v7, v7, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    array-length v7, v7

    array-length v8, v5

    invoke-static {v5, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v0    # "asciiBytes":[B
    .end local v1    # "decodedAscii":Ljava/lang/String;
    .end local v3    # "result":[B
    .end local v5    # "unicodeBytes":[B
    :catch_0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Lorg/apache/sanselan/ImageWriteException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
.end method

.method public getValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 8
    .param p1, "entry"    # Lorg/apache/sanselan/formats/tiff/TiffField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 344
    iget v4, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->type:I

    sget-object v5, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    iget v5, v5, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;->type:I

    if-ne v4, v5, :cond_0

    .line 345
    sget-object v4, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->FIELD_TYPE_ASCII:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;

    invoke-virtual {v4, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeASCII;->getSimpleValue(Lorg/apache/sanselan/formats/tiff/TiffField;)Ljava/lang/Object;

    move-result-object v4

    .line 403
    :goto_0
    return-object v4

    .line 346
    :cond_0
    iget v4, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->type:I

    sget-object v5, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->FIELD_TYPE_UNDEFINED:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    iget v5, v5, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->type:I

    if-ne v4, v5, :cond_2

    .line 359
    :cond_1
    iget-object v4, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v4, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->getRawBytes(Lorg/apache/sanselan/formats/tiff/TiffField;)[B

    move-result-object v0

    .line 360
    .local v0, "bytes":[B
    array-length v4, v0

    const/16 v5, 0x8

    if-ge v4, v5, :cond_3

    .line 365
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    const-string v5, "Text field missing encoding prefix."

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 348
    .end local v0    # "bytes":[B
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    iget v4, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->type:I

    sget-object v5, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->FIELD_TYPE_BYTE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;

    iget v5, v5, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;->type:I

    if-eq v4, v5, :cond_1

    .line 352
    const-string v4, "entry.type"

    iget v5, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->type:I

    invoke-static {v4, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 353
    const-string v4, "entry.directoryType"

    iget v5, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->directoryType:I

    invoke-static {v4, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 354
    const-string v4, "entry.type"

    invoke-virtual {p1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getDescriptionWithoutValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v4, "entry.type"

    iget-object v5, p1, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    invoke-static {v4, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    const-string v5, "Text field not encoded as bytes."

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 374
    .restart local v0    # "bytes":[B
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v4, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODINGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 376
    sget-object v4, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text;->TEXT_ENCODINGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;

    aget-object v2, v4, v3

    .line 377
    .local v2, "encoding":Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;
    iget-object v4, v2, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    iget-object v5, v2, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    array-length v5, v5

    invoke-static {v0, v6, v4, v6, v5}, Lorg/apache/sanselan/common/BinaryFileFunctions;->compareBytes([BI[BII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 383
    :try_start_1
    new-instance v4, Ljava/lang/String;

    iget-object v5, v2, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    array-length v5, v5

    array-length v6, v0

    iget-object v7, v2, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->prefix:[B

    array-length v7, v7

    sub-int/2addr v6, v7

    iget-object v7, v2, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-direct {v4, v0, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 387
    :catch_1
    move-exception v1

    .line 389
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 374
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 403
    .end local v2    # "encoding":Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Text$TextEncoding;
    :cond_5
    :try_start_2
    new-instance v4, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 405
    :catch_2
    move-exception v1

    .line 407
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    const-string v5, "Unknown text encoding prefix."

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isText()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method
