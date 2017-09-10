.class public Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;
.super Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
.source "ScanlineFilterPaeth.java"


# instance fields
.field private final BytesPerPixel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "BytesPerPixel"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;-><init>()V

    .line 29
    iput p1, p0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;->BytesPerPixel:I

    .line 30
    return-void
.end method

.method private PaethPredictor(III)I
    .locals 5
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    .line 35
    add-int v4, p1, p2

    sub-int v0, v4, p3

    .line 36
    .local v0, "p":I
    sub-int v4, v0, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 37
    .local v1, "pa":I
    sub-int v4, v0, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 38
    .local v2, "pb":I
    sub-int v4, v0, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 41
    .local v3, "pc":I
    if-gt v1, v2, :cond_0

    if-gt v1, v3, :cond_0

    .line 46
    .end local p1    # "a":I
    :goto_0
    return p1

    .line 43
    .restart local p1    # "a":I
    :cond_0
    if-gt v2, v3, :cond_1

    move p1, p2

    .line 44
    goto :goto_0

    :cond_1
    move p1, p3

    .line 46
    goto :goto_0
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 9
    .param p1, "src"    # [B
    .param p2, "dst"    # [B
    .param p3, "up"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "left":I
    iget v6, p0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;->BytesPerPixel:I

    sub-int v4, v2, v6

    .line 56
    .local v4, "prev_index":I
    if-ltz v4, :cond_0

    .line 57
    aget-byte v3, p2, v4

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, "above":I
    if-eqz p3, :cond_1

    .line 61
    aget-byte v1, p3, v2

    .line 64
    :cond_1
    const/4 v5, 0x0

    .line 65
    .local v5, "upperleft":I
    if-ltz v4, :cond_2

    if-eqz p3, :cond_2

    .line 66
    aget-byte v5, p3, v4

    .line 69
    :cond_2
    and-int/lit16 v6, v3, 0xff

    and-int/lit16 v7, v1, 0xff

    and-int/lit16 v8, v5, 0xff

    invoke-direct {p0, v6, v7, v8}, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterPaeth;->PaethPredictor(III)I

    move-result v0

    .line 72
    .local v0, "PaethPredictor":I
    aget-byte v6, p1, v2

    add-int/2addr v6, v0

    rem-int/lit16 v6, v6, 0x100

    int-to-byte v6, v6

    aput-byte v6, p2, v2

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "PaethPredictor":I
    .end local v1    # "above":I
    .end local v3    # "left":I
    .end local v4    # "prev_index":I
    .end local v5    # "upperleft":I
    :cond_3
    return-void
.end method
