.class public Lorg/apache/sanselan/formats/png/GammaCorrection;
.super Ljava/lang/Object;
.source "GammaCorrection.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final lookupTable:[I


# direct methods
.method public constructor <init>(DD)V
    .locals 9
    .param p1, "src_gamma"    # D
    .param p3, "dst_gamma"    # D

    .prologue
    const/16 v7, 0x100

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v0, v7, [I

    iput-object v0, p0, Lorg/apache/sanselan/formats/png/GammaCorrection;->lookupTable:[I

    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 37
    iget-object v6, p0, Lorg/apache/sanselan/formats/png/GammaCorrection;->lookupTable:[I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(IDD)I

    move-result v0

    aput v0, v6, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method private correctSample(IDD)I
    .locals 6
    .param p1, "sample"    # I
    .param p2, "src_gamma"    # D
    .param p4, "dst_gamma"    # D

    .prologue
    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 77
    int-to-double v0, p1

    div-double/2addr v0, v4

    div-double v2, p2, p4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public correctARGB(I)I
    .locals 7
    .param p1, "pixel"    # I

    .prologue
    .line 53
    const/high16 v5, -0x1000000

    and-int v0, v5, p1

    .line 54
    .local v0, "alpha":I
    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v3, v5, 0xff

    .line 55
    .local v3, "red":I
    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v2, v5, 0xff

    .line 56
    .local v2, "green":I
    shr-int/lit8 v5, p1, 0x0

    and-int/lit16 v1, v5, 0xff

    .line 58
    .local v1, "blue":I
    invoke-virtual {p0, v3}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v3

    .line 59
    invoke-virtual {p0, v2}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v2

    .line 60
    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctSample(I)I

    move-result v1

    .line 62
    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v0

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x0

    or-int v4, v5, v6

    .line 65
    .local v4, "rgb":I
    return v4
.end method

.method public correctSample(I)I
    .locals 1
    .param p1, "sample"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/GammaCorrection;->lookupTable:[I

    aget v0, v0, p1

    return v0
.end method
