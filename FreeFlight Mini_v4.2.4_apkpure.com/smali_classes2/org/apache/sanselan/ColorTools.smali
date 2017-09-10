.class public Lorg/apache/sanselan/ColorTools;
.super Ljava/lang/Object;
.source "ColorTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private count_bits_in_mask(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "count":I
    :goto_0
    if-eqz p1, :cond_0

    .line 148
    and-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    .line 151
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return v0
.end method


# virtual methods
.method public convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 5
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "from"    # Ljava/awt/color/ColorSpace;
    .param p3, "to"    # Ljava/awt/color/ColorSpace;

    .prologue
    .line 239
    new-instance v0, Ljava/awt/RenderingHints;

    sget-object v3, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v4, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 241
    .local v0, "hints":Ljava/awt/RenderingHints;
    sget-object v3, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v4, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v3, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v4, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v1, Ljava/awt/image/ColorConvertOp;

    invoke-direct {v1, p2, p3, v0}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    .line 248
    .local v1, "op":Ljava/awt/image/ColorConvertOp;
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 250
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    .line 252
    .local v2, "result":Ljava/awt/image/BufferedImage;
    invoke-virtual {p0, v2, p3}, Lorg/apache/sanselan/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    .line 254
    return-object v2
.end method

.method public convertBetweenColorSpacesX2(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 5
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "from"    # Ljava/awt/color/ColorSpace;
    .param p3, "to"    # Ljava/awt/color/ColorSpace;

    .prologue
    const/4 v4, 0x0

    .line 211
    new-instance v0, Ljava/awt/RenderingHints;

    sget-object v2, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 213
    .local v0, "hints":Ljava/awt/RenderingHints;
    sget-object v2, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v2, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 224
    new-instance v1, Ljava/awt/image/ColorConvertOp;

    invoke-direct {v1, p2, p3, v0}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    .line 225
    .local v1, "op":Ljava/awt/image/ColorConvertOp;
    invoke-virtual {v1, p1, v4}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 227
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 229
    invoke-virtual {v1, p1, v4}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 231
    invoke-virtual {p0, p1, p3}, Lorg/apache/sanselan/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 233
    return-object p1
.end method

.method public convertBetweenICCProfiles(Ljava/awt/image/BufferedImage;Ljava/awt/color/ICC_Profile;Ljava/awt/color/ICC_Profile;)Ljava/awt/image/BufferedImage;
    .locals 3
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "from"    # Ljava/awt/color/ICC_Profile;
    .param p3, "to"    # Ljava/awt/color/ICC_Profile;

    .prologue
    .line 197
    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, p2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 198
    .local v0, "cs_from":Ljava/awt/color/ICC_ColorSpace;
    new-instance v1, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v1, p3}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 200
    .local v1, "cs_to":Ljava/awt/color/ICC_ColorSpace;
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sanselan/ColorTools;->convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    return-object v2
.end method

.method protected convertFromColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 3
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "from"    # Ljava/awt/color/ColorSpace;

    .prologue
    .line 188
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v1

    .line 189
    .local v1, "srgbCM":Ljava/awt/image/ColorModel;
    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    .line 191
    .local v0, "cs_sRGB":Ljava/awt/color/ColorSpace;
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/ColorTools;->convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    return-object v2
.end method

.method public convertToColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 6
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "to"    # Ljava/awt/color/ColorSpace;

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    .line 159
    .local v0, "from":Ljava/awt/color/ColorSpace;
    new-instance v1, Ljava/awt/RenderingHints;

    sget-object v4, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-direct {v1, v4, v5}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 161
    .local v1, "hints":Ljava/awt/RenderingHints;
    sget-object v4, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v4, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v2, Ljava/awt/image/ColorConvertOp;

    invoke-direct {v2, v0, p2, v1}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    .line 168
    .local v2, "op":Ljava/awt/image/ColorConvertOp;
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    .line 170
    .local v3, "result":Ljava/awt/image/BufferedImage;
    invoke-virtual {p0, v3, p2}, Lorg/apache/sanselan/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    .line 172
    return-object v3
.end method

.method public convertToICCProfile(Ljava/awt/image/BufferedImage;Ljava/awt/color/ICC_Profile;)Ljava/awt/image/BufferedImage;
    .locals 2
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "to"    # Ljava/awt/color/ICC_Profile;

    .prologue
    .line 204
    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, p2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 206
    .local v0, "cs_to":Ljava/awt/color/ICC_ColorSpace;
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ColorTools;->convertToColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public convertTosRGB(Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 3
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;

    .prologue
    .line 176
    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    .line 178
    .local v0, "cs_sRGB":Ljava/awt/color/ColorSpace;
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v1

    .line 179
    .local v1, "srgbCM":Ljava/awt/image/ColorModel;
    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    .line 181
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ColorTools;->convertToColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    return-object v2
.end method

.method public correctImage(Ljava/awt/image/BufferedImage;Ljava/io/File;)Ljava/awt/image/BufferedImage;
    .locals 3
    .param p1, "src"    # Ljava/awt/image/BufferedImage;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p2}, Lorg/apache/sanselan/Sanselan;->getICCProfile(Ljava/io/File;)Ljava/awt/color/ICC_Profile;

    move-result-object v2

    .line 41
    .local v2, "icc":Ljava/awt/color/ICC_Profile;
    if-nez v2, :cond_0

    .line 47
    .end local p1    # "src":Ljava/awt/image/BufferedImage;
    :goto_0
    return-object p1

    .line 44
    .restart local p1    # "src":Ljava/awt/image/BufferedImage;
    :cond_0
    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, v2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 46
    .local v0, "cs":Ljava/awt/color/ICC_ColorSpace;
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ColorTools;->convertFromColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    .local v1, "dst":Ljava/awt/image/BufferedImage;
    move-object p1, v1

    .line 47
    goto :goto_0
.end method

.method public deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/ColorModel;
    .locals 1
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "cs"    # Ljava/awt/color/ColorSpace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/ColorTools;->deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;

    move-result-object v0

    return-object v0
.end method

.method public deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;
    .locals 1
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "cs"    # Ljava/awt/color/ColorSpace;
    .param p3, "force_no_alpha"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/ColorTools;->deriveColorModel(Ljava/awt/image/ColorModel;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;

    move-result-object v0

    return-object v0
.end method

.method public deriveColorModel(Ljava/awt/image/ColorModel;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;
    .locals 12
    .param p1, "old_cm"    # Ljava/awt/image/ColorModel;
    .param p2, "cs"    # Ljava/awt/color/ColorSpace;
    .param p3, "force_no_alpha"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    instance-of v0, p1, Ljava/awt/image/ComponentColorModel;

    if-eqz v0, :cond_1

    move-object v9, p1

    .line 100
    check-cast v9, Ljava/awt/image/ComponentColorModel;

    .line 102
    .local v9, "ccm":Ljava/awt/image/ComponentColorModel;
    if-eqz p3, :cond_0

    .line 103
    new-instance v0, Ljava/awt/image/ComponentColorModel;

    const/4 v4, 0x1

    invoke-virtual {v9}, Ljava/awt/image/ComponentColorModel;->getTransferType()I

    move-result v5

    move-object v1, p2

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    .line 117
    .end local v9    # "ccm":Ljava/awt/image/ComponentColorModel;
    :goto_0
    return-object v0

    .line 106
    .restart local v9    # "ccm":Ljava/awt/image/ComponentColorModel;
    :cond_0
    new-instance v0, Ljava/awt/image/ComponentColorModel;

    invoke-virtual {v9}, Ljava/awt/image/ComponentColorModel;->hasAlpha()Z

    move-result v2

    invoke-virtual {v9}, Ljava/awt/image/ComponentColorModel;->isAlphaPremultiplied()Z

    move-result v3

    invoke-virtual {v9}, Ljava/awt/image/ComponentColorModel;->getTransparency()I

    move-result v4

    invoke-virtual {v9}, Ljava/awt/image/ComponentColorModel;->getTransferType()I

    move-result v5

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    goto :goto_0

    .line 109
    .end local v9    # "ccm":Ljava/awt/image/ComponentColorModel;
    :cond_1
    instance-of v0, p1, Ljava/awt/image/DirectColorModel;

    if-eqz v0, :cond_2

    move-object v10, p1

    .line 110
    check-cast v10, Ljava/awt/image/DirectColorModel;

    .line 112
    .local v10, "dcm":Ljava/awt/image/DirectColorModel;
    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result v0

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getAlphaMask()I

    move-result v1

    or-int v11, v0, v1

    .line 115
    .local v11, "old_mask":I
    invoke-direct {p0, v11}, Lorg/apache/sanselan/ColorTools;->count_bits_in_mask(I)I

    move-result v2

    .line 117
    .local v2, "old_bits":I
    new-instance v0, Ljava/awt/image/DirectColorModel;

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result v3

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result v4

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result v5

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getAlphaMask()I

    move-result v6

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->isAlphaPremultiplied()Z

    move-result v7

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getTransferType()I

    move-result v8

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Ljava/awt/image/DirectColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZI)V

    goto :goto_0

    .line 142
    .end local v2    # "old_bits":I
    .end local v10    # "dcm":Ljava/awt/image/DirectColorModel;
    .end local v11    # "old_mask":I
    :cond_2
    new-instance v0, Ljava/awt/image/ImagingOpException;

    const-string v1, "Could not clone unknown ColorModel Type."

    invoke-direct {v0, v1}, Ljava/awt/image/ImagingOpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 2
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "cs"    # Ljava/awt/color/ColorSpace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/ColorTools;->deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 67
    .local v0, "cm":Ljava/awt/image/ColorModel;
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ICC_Profile;)Ljava/awt/image/BufferedImage;
    .locals 2
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "profile"    # Ljava/awt/color/ICC_Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, p2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 54
    .local v0, "cs":Ljava/awt/color/ICC_ColorSpace;
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 4
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "cm"    # Ljava/awt/image/ColorModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p2, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    .line 82
    .local v0, "result":Ljava/awt/image/BufferedImage;
    return-object v0
.end method
