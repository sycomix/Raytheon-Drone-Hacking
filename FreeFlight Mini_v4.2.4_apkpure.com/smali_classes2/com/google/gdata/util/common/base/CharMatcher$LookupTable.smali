.class public Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;
.super Ljava/lang/Object;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LookupTable"
.end annotation


# instance fields
.field data:[J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    const/16 v0, 0x400

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;->data:[J

    return-void
.end method


# virtual methods
.method get(C)Z
    .locals 4
    .param p1, "index"    # C

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;->data:[J

    shr-int/lit8 v1, p1, 0x6

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method set(C)V
    .locals 6
    .param p1, "index"    # C

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;->data:[J

    shr-int/lit8 v1, p1, 0x6

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 629
    return-void
.end method
