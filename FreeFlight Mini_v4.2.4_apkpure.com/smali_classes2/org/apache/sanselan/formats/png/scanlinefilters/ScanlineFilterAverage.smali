.class public Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterAverage;
.super Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
.source "ScanlineFilterAverage.java"


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
    iput p1, p0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterAverage;->BytesPerPixel:I

    .line 30
    return-void
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 7
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
    .line 35
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "Raw":I
    iget v5, p0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterAverage;->BytesPerPixel:I

    sub-int v4, v3, v5

    .line 39
    .local v4, "prev_index":I
    if-ltz v4, :cond_0

    .line 40
    aget-byte v2, p2, v4

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    .local v1, "Prior":I
    if-eqz p3, :cond_1

    .line 44
    aget-byte v1, p3, v3

    .line 46
    :cond_1
    and-int/lit16 v5, v2, 0xff

    and-int/lit16 v6, v1, 0xff

    add-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 48
    .local v0, "Average":I
    aget-byte v5, p1, v3

    add-int/2addr v5, v0

    rem-int/lit16 v5, v5, 0x100

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "Average":I
    .end local v1    # "Prior":I
    .end local v2    # "Raw":I
    .end local v4    # "prev_index":I
    :cond_2
    return-void
.end method
