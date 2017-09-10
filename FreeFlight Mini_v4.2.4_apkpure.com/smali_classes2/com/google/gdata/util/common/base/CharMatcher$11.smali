.class final Lcom/google/gdata/util/common/base/CharMatcher$11;
.super Lcom/google/gdata/util/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/util/common/base/CharMatcher;->is(C)Lcom/google/gdata/util/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 331
    iput-char p1, p0, Lcom/google/gdata/util/common/base/CharMatcher$11;->val$match:C

    invoke-direct {p0}, Lcom/google/gdata/util/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public and(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lcom/google/gdata/util/common/base/CharMatcher;

    .prologue
    .line 341
    iget-char v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$11;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/google/gdata/util/common/base/CharMatcher$11;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/gdata/util/common/base/CharMatcher$11;
    :cond_0
    sget-object p0, Lcom/google/gdata/util/common/base/CharMatcher$11;->NONE:Lcom/google/gdata/util/common/base/CharMatcher;

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 331
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 333
    iget-char v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$11;->val$match:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negate()Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 347
    iget-char v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$11;->val$match:C

    invoke-static {v0}, Lcom/google/gdata/util/common/base/CharMatcher$11;->isNot(C)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lcom/google/gdata/util/common/base/CharMatcher;

    .prologue
    .line 344
    iget-char v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$11;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "other":Lcom/google/gdata/util/common/base/CharMatcher;
    :goto_0
    return-object p1

    .restart local p1    # "other":Lcom/google/gdata/util/common/base/CharMatcher;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->or(Lcom/google/gdata/util/common/base/CharMatcher;)Lcom/google/gdata/util/common/base/CharMatcher;

    move-result-object p1

    goto :goto_0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C

    .prologue
    .line 338
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/google/gdata/util/common/base/CharMatcher$11;->val$match:C

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setBits(Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;)V
    .locals 1
    .param p1, "table"    # Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;

    .prologue
    .line 350
    iget-char v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$11;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;->set(C)V

    .line 351
    return-void
.end method
