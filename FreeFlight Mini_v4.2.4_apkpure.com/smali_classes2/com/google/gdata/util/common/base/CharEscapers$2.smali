.class final Lcom/google/gdata/util/common/base/CharEscapers$2;
.super Lcom/google/gdata/util/common/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/google/gdata/util/common/base/CharEscaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 719
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_0

    .line 720
    const/4 v0, 0x0

    .line 733
    :goto_0
    return-object v0

    .line 723
    :cond_0
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 724
    .local v0, "r":[C
    const/4 v1, 0x5

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 725
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 726
    const/4 v1, 0x4

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 727
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 728
    const/4 v1, 0x3

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 729
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 730
    const/4 v1, 0x2

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 731
    const/4 v1, 0x1

    const/16 v2, 0x75

    aput-char v2, v0, v1

    .line 732
    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    goto :goto_0
.end method
