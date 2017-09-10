.class public Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterSub;
.super Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilter;
.source "ScanlineFilterSub.java"


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
    iput p1, p0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterSub;->BytesPerPixel:I

    .line 30
    return-void
.end method


# virtual methods
.method public unfilter([B[B[B)V
    .locals 4
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
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 37
    iget v2, p0, Lorg/apache/sanselan/formats/png/scanlinefilters/ScanlineFilterSub;->BytesPerPixel:I

    sub-int v1, v0, v2

    .line 38
    .local v1, "prev_index":I
    if-ltz v1, :cond_0

    .line 39
    aget-byte v2, p1, v0

    aget-byte v3, p2, v1

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 35
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    aget-byte v2, p1, v0

    aput-byte v2, p2, v0

    goto :goto_1

    .line 49
    .end local v1    # "prev_index":I
    :cond_1
    return-void
.end method
