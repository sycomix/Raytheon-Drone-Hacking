.class final Lcom/google/gdata/util/common/base/CharMatcher$16;
.super Lcom/google/gdata/util/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/util/common/base/CharMatcher;->forPredicate(Lcom/google/gdata/util/common/base/Predicate;)Lcom/google/gdata/util/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/google/gdata/util/common/base/Predicate;


# direct methods
.method constructor <init>(Lcom/google/gdata/util/common/base/Predicate;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/gdata/util/common/base/CharMatcher$16;->val$predicate:Lcom/google/gdata/util/common/base/Predicate;

    invoke-direct {p0}, Lcom/google/gdata/util/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Character;)Z
    .locals 2
    .param p1, "character"    # Ljava/lang/Character;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$16;->val$predicate:Lcom/google/gdata/util/common/base/Predicate;

    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/gdata/util/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 463
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher$16;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$16;->val$predicate:Lcom/google/gdata/util/common/base/Predicate;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/gdata/util/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
