.class Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16NoBOM;
.super Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;
.source "UnicodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/util/UnicodeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeMetricsUTF16NoBOM"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "byteOrder"    # I

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;-><init>(I)V

    .line 431
    return-void
.end method
