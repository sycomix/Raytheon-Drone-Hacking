.class Lcom/google/gdata/util/common/base/CharEscapers$JavaCharEscaper;
.super Lcom/google/gdata/util/common/base/CharEscapers$FastCharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavaCharEscaper"
.end annotation


# direct methods
.method public constructor <init>([[C)V
    .locals 2
    .param p1, "replacements"    # [[C

    .prologue
    .line 874
    const/16 v0, 0x20

    const/16 v1, 0x7e

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/util/common/base/CharEscapers$FastCharEscaper;-><init>([[CCC)V

    .line 875
    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 7
    .param p1, "c"    # C

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 879
    iget v1, p0, Lcom/google/gdata/util/common/base/CharEscapers$JavaCharEscaper;->replacementLength:I

    if-ge p1, v1, :cond_0

    .line 880
    iget-object v1, p0, Lcom/google/gdata/util/common/base/CharEscapers$JavaCharEscaper;->replacements:[[C

    aget-object v0, v1, p1

    .line 881
    .local v0, "r":[C
    if-eqz v0, :cond_0

    .line 916
    .end local v0    # "r":[C
    :goto_0
    return-object v0

    .line 887
    :cond_0
    iget-char v1, p0, Lcom/google/gdata/util/common/base/CharEscapers$JavaCharEscaper;->safeMin:C

    if-gt v1, p1, :cond_1

    iget-char v1, p0, Lcom/google/gdata/util/common/base/CharEscapers$JavaCharEscaper;->safeMax:C

    if-gt p1, v1, :cond_1

    .line 888
    const/4 v0, 0x0

    goto :goto_0

    .line 891
    :cond_1
    const/16 v1, 0xff

    if-gt p1, v1, :cond_2

    .line 894
    new-array v0, v6, [C

    .line 895
    .restart local v0    # "r":[C
    const/16 v1, 0x5c

    aput-char v1, v0, v2

    .line 896
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 897
    ushr-int/lit8 v1, p1, 0x3

    int-to-char p1, v1

    .line 898
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    .line 899
    ushr-int/lit8 v1, p1, 0x3

    int-to-char p1, v1

    .line 900
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v3

    goto :goto_0

    .line 906
    .end local v0    # "r":[C
    :cond_2
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 907
    .restart local v0    # "r":[C
    const/16 v1, 0x5c

    aput-char v1, v0, v2

    .line 908
    const/16 v1, 0x75

    aput-char v1, v0, v3

    .line 909
    const/4 v1, 0x5

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v2

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 910
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 911
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 912
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 913
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 914
    ushr-int/lit8 v1, p1, 0x4

    int-to-char p1, v1

    .line 915
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->access$100()[C

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_0
.end method
