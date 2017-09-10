.class Lcom/google/gdata/util/common/base/Joiner$1;
.super Lcom/google/gdata/util/common/base/Joiner;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/util/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/util/common/base/Joiner;

.field final synthetic val$nullText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/gdata/util/common/base/Joiner;Lcom/google/gdata/util/common/base/Joiner;Ljava/lang/String;)V
    .locals 1
    .param p2, "x0"    # Lcom/google/gdata/util/common/base/Joiner;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/gdata/util/common/base/Joiner$1;->this$0:Lcom/google/gdata/util/common/base/Joiner;

    iput-object p3, p0, Lcom/google/gdata/util/common/base/Joiner$1;->val$nullText:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/gdata/util/common/base/Joiner;-><init>(Lcom/google/gdata/util/common/base/Joiner;Lcom/google/gdata/util/common/base/Joiner$1;)V

    return-void
.end method


# virtual methods
.method public skipNulls()Lcom/google/gdata/util/common/base/Joiner;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "part"    # Ljava/lang/Object;

    .prologue
    .line 175
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/gdata/util/common/base/Joiner$1;->val$nullText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;
    .locals 2
    .param p1, "nullText"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
