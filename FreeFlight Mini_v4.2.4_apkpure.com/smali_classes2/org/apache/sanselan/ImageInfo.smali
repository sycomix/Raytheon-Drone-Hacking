.class public Lorg/apache/sanselan/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# static fields
.field public static final COLOR_TYPE_BW:I = 0x0

.field public static final COLOR_TYPE_CMYK:I = 0x3

.field public static final COLOR_TYPE_GRAYSCALE:I = 0x1

.field public static final COLOR_TYPE_OTHER:I = -0x1

.field public static final COLOR_TYPE_RGB:I = 0x2

.field public static final COLOR_TYPE_UNKNOWN:I = -0x2

.field public static final COMPRESSION_ALGORITHM_CCITT_1D:Ljava/lang/String; = "CCITT 1D"

.field public static final COMPRESSION_ALGORITHM_CCITT_GROUP_3:Ljava/lang/String; = "CCITT Group 3 1-Dimensional Modified Huffman run-length encoding."

.field public static final COMPRESSION_ALGORITHM_CCITT_GROUP_4:Ljava/lang/String; = "CCITT Group 4"

.field public static final COMPRESSION_ALGORITHM_JPEG:Ljava/lang/String; = "JPEG"

.field public static final COMPRESSION_ALGORITHM_LZW:Ljava/lang/String; = "LZW"

.field public static final COMPRESSION_ALGORITHM_NONE:Ljava/lang/String; = "None"

.field public static final COMPRESSION_ALGORITHM_PACKBITS:Ljava/lang/String; = "PackBits"

.field public static final COMPRESSION_ALGORITHM_PNG_FILTER:Ljava/lang/String; = "PNG Filter"

.field public static final COMPRESSION_ALGORITHM_PSD:Ljava/lang/String; = "Photoshop"

.field public static final COMPRESSION_ALGORITHM_RLE:Ljava/lang/String; = "RLE: Run-Length Encoding"

.field public static final COMPRESSION_ALGORITHM_UNKNOWN:Ljava/lang/String; = "Unknown"


# instance fields
.field private final bitsPerPixel:I

.field private final colorType:I

.field private final comments:Ljava/util/ArrayList;

.field private final compressionAlgorithm:Ljava/lang/String;

.field private final format:Lorg/apache/sanselan/ImageFormat;

.field private final formatDetails:Ljava/lang/String;

.field private final formatName:Ljava/lang/String;

.field private final height:I

.field private final isProgressive:Z

.field private final isTransparent:Z

.field private final mimeType:Ljava/lang/String;

.field private final numberOfImages:I

.field private final physicalHeightDpi:I

.field private final physicalHeightInch:F

.field private final physicalWidthDpi:I

.field private final physicalWidthInch:F

.field private final usesPalette:Z

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V
    .locals 1
    .param p1, "formatDetails"    # Ljava/lang/String;
    .param p2, "bitsPerPixel"    # I
    .param p3, "comments"    # Ljava/util/ArrayList;
    .param p4, "format"    # Lorg/apache/sanselan/ImageFormat;
    .param p5, "formatName"    # Ljava/lang/String;
    .param p6, "height"    # I
    .param p7, "mimeType"    # Ljava/lang/String;
    .param p8, "numberOfImages"    # I
    .param p9, "physicalHeightDpi"    # I
    .param p10, "physicalHeightInch"    # F
    .param p11, "physicalWidthDpi"    # I
    .param p12, "physicalWidthInch"    # F
    .param p13, "width"    # I
    .param p14, "isProgressive"    # Z
    .param p15, "isTransparent"    # Z
    .param p16, "usesPalette"    # Z
    .param p17, "colorType"    # I
    .param p18, "compressionAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/apache/sanselan/ImageInfo;->formatDetails:Ljava/lang/String;

    .line 84
    iput p2, p0, Lorg/apache/sanselan/ImageInfo;->bitsPerPixel:I

    .line 85
    iput-object p3, p0, Lorg/apache/sanselan/ImageInfo;->comments:Ljava/util/ArrayList;

    .line 87
    iput-object p4, p0, Lorg/apache/sanselan/ImageInfo;->format:Lorg/apache/sanselan/ImageFormat;

    .line 88
    iput-object p5, p0, Lorg/apache/sanselan/ImageInfo;->formatName:Ljava/lang/String;

    .line 89
    iput p6, p0, Lorg/apache/sanselan/ImageInfo;->height:I

    .line 90
    iput-object p7, p0, Lorg/apache/sanselan/ImageInfo;->mimeType:Ljava/lang/String;

    .line 92
    iput p8, p0, Lorg/apache/sanselan/ImageInfo;->numberOfImages:I

    .line 93
    iput p9, p0, Lorg/apache/sanselan/ImageInfo;->physicalHeightDpi:I

    .line 94
    iput p10, p0, Lorg/apache/sanselan/ImageInfo;->physicalHeightInch:F

    .line 95
    iput p11, p0, Lorg/apache/sanselan/ImageInfo;->physicalWidthDpi:I

    .line 96
    iput p12, p0, Lorg/apache/sanselan/ImageInfo;->physicalWidthInch:F

    .line 97
    iput p13, p0, Lorg/apache/sanselan/ImageInfo;->width:I

    .line 98
    iput-boolean p14, p0, Lorg/apache/sanselan/ImageInfo;->isProgressive:Z

    .line 100
    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/apache/sanselan/ImageInfo;->isTransparent:Z

    .line 101
    move/from16 v0, p16

    iput-boolean v0, p0, Lorg/apache/sanselan/ImageInfo;->usesPalette:Z

    .line 103
    move/from16 v0, p17

    iput v0, p0, Lorg/apache/sanselan/ImageInfo;->colorType:I

    .line 104
    move-object/from16 v0, p18

    iput-object v0, p0, Lorg/apache/sanselan/ImageInfo;->compressionAlgorithm:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .prologue
    .line 292
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/apache/sanselan/ImageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public getBitsPerPixel()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/apache/sanselan/ImageInfo;->bitsPerPixel:I

    return v0
.end method

.method public getColorType()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lorg/apache/sanselan/ImageInfo;->colorType:I

    return v0
.end method

.method public getColorTypeDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lorg/apache/sanselan/ImageInfo;->colorType:I

    packed-switch v0, :pswitch_data_0

    .line 285
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 272
    :pswitch_0
    const-string v0, "Black and White"

    goto :goto_0

    .line 274
    :pswitch_1
    const-string v0, "Grayscale"

    goto :goto_0

    .line 276
    :pswitch_2
    const-string v0, "RGB"

    goto :goto_0

    .line 278
    :pswitch_3
    const-string v0, "CMYK"

    goto :goto_0

    .line 280
    :pswitch_4
    const-string v0, "Other"

    goto :goto_0

    .line 282
    :pswitch_5
    const-string v0, "Unknown"

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getComments()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sanselan/ImageInfo;->comments:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFormat()Lorg/apache/sanselan/ImageFormat;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/sanselan/ImageInfo;->format:Lorg/apache/sanselan/ImageFormat;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/sanselan/ImageInfo;->formatName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/apache/sanselan/ImageInfo;->height:I

    return v0
.end method

.method public getIsProgressive()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lorg/apache/sanselan/ImageInfo;->isProgressive:Z

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/sanselan/ImageInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfImages()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/apache/sanselan/ImageInfo;->numberOfImages:I

    return v0
.end method

.method public getPhysicalHeightDpi()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lorg/apache/sanselan/ImageInfo;->physicalHeightDpi:I

    return v0
.end method

.method public getPhysicalHeightInch()F
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lorg/apache/sanselan/ImageInfo;->physicalHeightInch:F

    return v0
.end method

.method public getPhysicalWidthDpi()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lorg/apache/sanselan/ImageInfo;->physicalWidthDpi:I

    return v0
.end method

.method public getPhysicalWidthInch()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lorg/apache/sanselan/ImageInfo;->physicalWidthInch:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lorg/apache/sanselan/ImageInfo;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 300
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 302
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 305
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 308
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .end local v2    # "sw":Ljava/io/StringWriter;
    :goto_0
    return-object v3

    .line 306
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Image Data: Error"

    goto :goto_0
.end method

.method public toString(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Format Details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sanselan/ImageInfo;->formatDetails:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Bits Per Pixel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/ImageInfo;->bitsPerPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Comments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sanselan/ImageInfo;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/sanselan/ImageInfo;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 321
    iget-object v2, p0, Lorg/apache/sanselan/ImageInfo;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 322
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sanselan/ImageInfo;->format:Lorg/apache/sanselan/ImageFormat;

    iget-object v3, v3, Lorg/apache/sanselan/ImageFormat;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Format Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sanselan/ImageInfo;->formatName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Compression Algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sanselan/ImageInfo;->compressionAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/ImageInfo;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "MimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sanselan/ImageInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Number Of Images: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/ImageInfo;->numberOfImages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Physical Height Dpi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/ImageInfo;->physicalHeightDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Physical Height Inch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/ImageInfo;->physicalHeightInch:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Physical Width Dpi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/ImageInfo;->physicalWidthDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Physical Width Inch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/ImageInfo;->physicalWidthInch:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/sanselan/ImageInfo;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Is Progressive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/sanselan/ImageInfo;->isProgressive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Is Transparent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/sanselan/ImageInfo;->isTransparent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Color Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/sanselan/ImageInfo;->getColorTypeDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Uses Palette: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/sanselan/ImageInfo;->usesPalette:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 344
    return-void
.end method
