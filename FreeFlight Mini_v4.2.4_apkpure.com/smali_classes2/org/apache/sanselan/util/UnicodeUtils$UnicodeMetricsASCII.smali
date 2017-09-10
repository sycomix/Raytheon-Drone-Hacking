.class Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsASCII;
.super Lorg/apache/sanselan/util/UnicodeUtils;
.source "UnicodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/util/UnicodeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeMetricsASCII"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sanselan/util/UnicodeUtils;-><init>(Lorg/apache/sanselan/util/UnicodeUtils$1;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/sanselan/util/UnicodeUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/sanselan/util/UnicodeUtils$1;

    .prologue
    .line 231
    invoke-direct {p0}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsASCII;-><init>()V

    return-void
.end method


# virtual methods
.method public findEnd([BIZ)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "includeTerminator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;
        }
    .end annotation

    .prologue
    .line 236
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 238
    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    .line 239
    if-eqz p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 241
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 236
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_2
    array-length v0, p1

    goto :goto_1
.end method
