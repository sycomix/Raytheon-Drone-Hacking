.class Lorg/apache/sanselan/palette/ColorSpaceSubset;
.super Ljava/lang/Object;
.source "ColorSpaceSubset.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static compares:J


# instance fields
.field public index:I

.field public final maxs:[I

.field public final mins:[I

.field public final precision:I

.field public final precision_mask:I

.field public rgb:I

.field public final total:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->compares:J

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "total"    # I
    .param p2, "precision"    # I

    .prologue
    const/4 v3, 0x3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    .line 30
    iput p2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    .line 31
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision_mask:I

    .line 33
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    .line 34
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 37
    iget-object v1, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 39
    iget-object v1, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    iget v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision_mask:I

    aput v2, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->rgb:I

    .line 43
    return-void
.end method

.method public constructor <init>(II[I[I[I)V
    .locals 1
    .param p1, "total"    # I
    .param p2, "precision"    # I
    .param p3, "mins"    # [I
    .param p4, "maxs"    # [I
    .param p5, "table"    # [I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    .line 49
    iput p2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    .line 50
    iput-object p3, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    .line 51
    iput-object p4, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    .line 52
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision_mask:I

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->rgb:I

    .line 55
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 167
    move-object v0, p1

    check-cast v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;

    .line 168
    .local v0, "other":Lorg/apache/sanselan/palette/ColorSpaceSubset;
    iget v1, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->rgb:I

    iget v2, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->rgb:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public final contains(III)Z
    .locals 7
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 61
    sget-wide v2, Lorg/apache/sanselan/palette/ColorSpaceSubset;->compares:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lorg/apache/sanselan/palette/ColorSpaceSubset;->compares:J

    .line 63
    iget v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v2, v2, 0x8

    shr-int/2addr p1, v2

    .line 64
    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v0

    if-le v2, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v0

    if-lt v2, p1, :cond_0

    .line 69
    iget v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v2, v2, 0x8

    shr-int/2addr p2, v2

    .line 70
    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v1

    if-gt v2, p2, :cond_0

    .line 72
    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v1

    if-lt v2, p2, :cond_0

    .line 75
    iget v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v2, v2, 0x8

    shr-int/2addr p3, v2

    .line 76
    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v6

    if-gt v2, p3, :cond_0

    .line 78
    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v6

    if-lt v2, p3, :cond_0

    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 11
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 86
    iget-object v4, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v8

    iget-object v5, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v8

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x1

    .line 87
    .local v3, "rdiff":I
    iget-object v4, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v9

    iget-object v5, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v9

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, 0x1

    .line 88
    .local v2, "gdiff":I
    iget-object v4, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v10

    iget-object v5, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v10

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    .line 89
    .local v0, "bdiff":I
    mul-int v4, v3, v2

    mul-int v1, v4, v0

    .line 91
    .local v1, "color_area":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->rgb:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "] total : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\trgb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->rgb:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "red: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v8

    iget v7, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v8

    iget v7, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "green: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v9

    iget v7, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v9

    iget v7, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "blue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v10

    iget v7, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v10

    iget v7, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\tred: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "green: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "blue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\trdiff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "gdiff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "bdiff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "color_area: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public dumpJustRGB(Ljava/lang/String;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\trgb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->rgb:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "red: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v4

    iget v3, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v4

    iget v3, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "green: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v5

    iget v3, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v5

    iget v3, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "blue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v6

    iget v3, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v6

    iget v3, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public getArea()I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    iget-object v4, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v6

    iget-object v5, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x1

    .line 127
    .local v3, "rdiff":I
    iget-object v4, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v7

    iget-object v5, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v7

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, 0x1

    .line 128
    .local v2, "gdiff":I
    iget-object v4, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v4, v8

    iget-object v5, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    aget v5, v5, v8

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    .line 129
    .local v0, "bdiff":I
    mul-int v4, v3, v2

    mul-int v1, v4, v0

    .line 131
    .local v1, "color_area":I
    return v1
.end method

.method public setAverageRGB([I)V
    .locals 18
    .param p1, "table"    # [I

    .prologue
    .line 139
    const-wide/16 v12, 0x0

    .local v12, "redsum":J
    const-wide/16 v8, 0x0

    .local v8, "greensum":J
    const-wide/16 v4, 0x0

    .line 141
    .local v4, "bluesum":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    const/4 v14, 0x0

    aget v10, v11, v14

    .local v10, "red":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    const/4 v14, 0x0

    aget v11, v11, v14

    if-gt v10, v11, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    const/4 v14, 0x1

    aget v6, v11, v14

    .local v6, "green":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    const/4 v14, 0x1

    aget v11, v11, v14

    if-gt v6, v11, :cond_1

    .line 143
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->mins:[I

    const/4 v14, 0x2

    aget v2, v11, v14

    .local v2, "blue":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->maxs:[I

    const/4 v14, 0x2

    aget v11, v11, v14

    if-gt v2, v11, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    mul-int/lit8 v11, v11, 0x2

    shl-int v11, v2, v11

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    mul-int/lit8 v14, v14, 0x1

    shl-int v14, v6, v14

    or-int/2addr v11, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    mul-int/lit8 v14, v14, 0x0

    shl-int v14, v10, v14

    or-int v7, v11, v14

    .line 151
    .local v7, "index":I
    aget v3, p1, v7

    .line 152
    .local v3, "count":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int v11, v10, v11

    mul-int/2addr v11, v3

    int-to-long v14, v11

    add-long/2addr v12, v14

    .line 153
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int v11, v6, v11

    mul-int/2addr v11, v3

    int-to-long v14, v11

    add-long/2addr v8, v14

    .line 154
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int v11, v2, v11

    mul-int/2addr v11, v3

    int-to-long v14, v11

    add-long/2addr v4, v14

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 142
    .end local v3    # "count":I
    .end local v7    # "index":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 141
    .end local v2    # "blue":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 158
    .end local v6    # "green":I
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    int-to-long v14, v11

    div-long/2addr v12, v14

    .line 159
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    int-to-long v14, v11

    div-long/2addr v8, v14

    .line 160
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->total:I

    int-to-long v14, v11

    div-long/2addr v4, v14

    .line 161
    const-wide/16 v14, 0xff

    and-long/2addr v14, v12

    const/16 v11, 0x10

    shl-long/2addr v14, v11

    const-wide/16 v16, 0xff

    and-long v16, v16, v8

    const/16 v11, 0x8

    shl-long v16, v16, v11

    or-long v14, v14, v16

    const-wide/16 v16, 0xff

    and-long v16, v16, v4

    const/4 v11, 0x0

    shl-long v16, v16, v11

    or-long v14, v14, v16

    long-to-int v11, v14

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->rgb:I

    .line 163
    return-void
.end method

.method public final setIndex(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 175
    iput p1, p0, Lorg/apache/sanselan/palette/ColorSpaceSubset;->index:I

    .line 176
    return-void
.end method
