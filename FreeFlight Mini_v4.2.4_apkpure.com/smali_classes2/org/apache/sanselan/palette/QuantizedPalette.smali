.class public Lorg/apache/sanselan/palette/QuantizedPalette;
.super Lorg/apache/sanselan/palette/Palette;
.source "QuantizedPalette.java"


# instance fields
.field private final precision:I

.field private final straight:[Lorg/apache/sanselan/palette/ColorSpaceSubset;

.field private final subsets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 11
    .param p1, "subsets"    # Ljava/util/ArrayList;
    .param p2, "precision"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 30
    invoke-direct {p0}, Lorg/apache/sanselan/palette/Palette;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->subsets:Ljava/util/ArrayList;

    .line 32
    iput p2, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    .line 35
    mul-int/lit8 v6, p2, 0x3

    shl-int v6, v8, v6

    new-array v6, v6, [Lorg/apache/sanselan/palette/ColorSpaceSubset;

    iput-object v6, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->straight:[Lorg/apache/sanselan/palette/ColorSpaceSubset;

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 39
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    .line 40
    .local v4, "subset":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    invoke-virtual {v4, v0}, Lorg/apache/sanselan/palette/ColorSpaceSubset;->setIndex(I)V

    .line 42
    iget-object v6, v4, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v5, v6, v9

    .local v5, "u":I
    :goto_1
    iget-object v6, v4, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v9

    if-gt v5, v6, :cond_2

    .line 43
    iget-object v6, v4, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v2, v6, v8

    .local v2, "j":I
    :goto_2
    iget-object v6, v4, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v8

    if-gt v2, v6, :cond_1

    .line 44
    iget-object v6, v4, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v3, v6, v10

    .local v3, "k":I
    :goto_3
    iget-object v6, v4, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v10

    if-gt v3, v6, :cond_0

    .line 46
    mul-int/lit8 v6, p2, 0x2

    shl-int v6, v5, v6

    mul-int/lit8 v7, p2, 0x1

    shl-int v7, v2, v7

    or-int/2addr v6, v7

    mul-int/lit8 v7, p2, 0x0

    shl-int v7, v3, v7

    or-int v1, v6, v7

    .line 49
    .local v1, "index":I
    iget-object v6, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->straight:[Lorg/apache/sanselan/palette/ColorSpaceSubset;

    aput-object v4, v6, v1

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 43
    .end local v1    # "index":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 42
    .end local v3    # "k":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 37
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v4    # "subset":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    .end local v5    # "u":I
    :cond_3
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public getEntry(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->subsets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    .line 78
    .local v0, "subset":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    iget v1, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->rgb:I

    return v1
.end method

.method public getPaletteIndex(I)I
    .locals 5
    .param p1, "rgb"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    shl-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    .line 60
    .local v1, "precisionMask":I
    iget v2, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    mul-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v2, v2, 0x18

    shr-int v2, p1, v2

    iget v3, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    shl-int/lit8 v3, v3, 0x1

    shl-int v3, v1, v3

    and-int/2addr v2, v3

    iget v3, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    mul-int/lit8 v3, v3, 0x2

    rsub-int/lit8 v3, v3, 0x10

    shr-int v3, p1, v3

    iget v4, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    shl-int v4, v1, v4

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iget v3, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shr-int v3, p1, v3

    and-int/2addr v3, v1

    or-int v0, v2, v3

    .line 64
    .local v0, "index":I
    iget-object v2, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->straight:[Lorg/apache/sanselan/palette/ColorSpaceSubset;

    aget-object v2, v2, v0

    iget v2, v2, Lorg/apache/sanselan/palette/ColorSpaceSubset;->index:I

    return v2
.end method

.method public length()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/sanselan/palette/QuantizedPalette;->subsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
