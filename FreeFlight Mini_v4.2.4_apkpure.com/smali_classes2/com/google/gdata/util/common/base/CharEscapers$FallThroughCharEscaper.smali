.class Lcom/google/gdata/util/common/base/CharEscapers$FallThroughCharEscaper;
.super Lcom/google/gdata/util/common/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallThroughCharEscaper"
.end annotation


# instance fields
.field private final primary:Lcom/google/gdata/util/common/base/CharEscaper;

.field private final secondary:Lcom/google/gdata/util/common/base/CharEscaper;


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/common/base/CharEscaper;Lcom/google/gdata/util/common/base/CharEscaper;)V
    .locals 0
    .param p1, "primary"    # Lcom/google/gdata/util/common/base/CharEscaper;
    .param p2, "secondary"    # Lcom/google/gdata/util/common/base/CharEscaper;

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/google/gdata/util/common/base/CharEscaper;-><init>()V

    .line 1031
    iput-object p1, p0, Lcom/google/gdata/util/common/base/CharEscapers$FallThroughCharEscaper;->primary:Lcom/google/gdata/util/common/base/CharEscaper;

    .line 1032
    iput-object p2, p0, Lcom/google/gdata/util/common/base/CharEscapers$FallThroughCharEscaper;->secondary:Lcom/google/gdata/util/common/base/CharEscaper;

    .line 1033
    return-void
.end method


# virtual methods
.method protected escape(C)[C
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/google/gdata/util/common/base/CharEscapers$FallThroughCharEscaper;->primary:Lcom/google/gdata/util/common/base/CharEscaper;

    invoke-virtual {v1, p1}, Lcom/google/gdata/util/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1038
    .local v0, "result":[C
    if-nez v0, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/google/gdata/util/common/base/CharEscapers$FallThroughCharEscaper;->secondary:Lcom/google/gdata/util/common/base/CharEscaper;

    invoke-virtual {v1, p1}, Lcom/google/gdata/util/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1041
    :cond_0
    return-object v0
.end method
