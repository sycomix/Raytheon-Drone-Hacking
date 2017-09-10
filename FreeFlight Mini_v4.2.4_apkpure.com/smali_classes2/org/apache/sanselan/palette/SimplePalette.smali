.class public Lorg/apache/sanselan/palette/SimplePalette;
.super Lorg/apache/sanselan/palette/Palette;
.source "SimplePalette.java"


# instance fields
.field private final palette:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .param p1, "palette"    # [I

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/sanselan/palette/Palette;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/apache/sanselan/palette/SimplePalette;->palette:[I

    .line 28
    return-void
.end method

.method private getPaletteIndex([II)I
    .locals 2
    .param p1, "palette"    # [I
    .param p2, "argb"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 52
    aget v1, p1, v0

    if-ne v1, p2, :cond_0

    .line 56
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 47
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public dump()V
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/sanselan/palette/SimplePalette;->palette:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\tpalette["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/apache/sanselan/palette/SimplePalette;->palette:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sanselan/palette/SimplePalette;->palette:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public getEntry(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/sanselan/palette/SimplePalette;->palette:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPaletteIndex(I)I
    .locals 1
    .param p1, "rgb"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/sanselan/palette/SimplePalette;->palette:[I

    invoke-direct {p0, v0, p1}, Lorg/apache/sanselan/palette/SimplePalette;->getPaletteIndex([II)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/sanselan/palette/SimplePalette;->palette:[I

    array-length v0, v0

    return v0
.end method
