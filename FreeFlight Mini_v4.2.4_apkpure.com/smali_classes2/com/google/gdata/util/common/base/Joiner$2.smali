.class Lcom/google/gdata/util/common/base/Joiner$2;
.super Lcom/google/gdata/util/common/base/Joiner;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/util/common/base/Joiner;->skipNulls()Lcom/google/gdata/util/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/util/common/base/Joiner;


# direct methods
.method constructor <init>(Lcom/google/gdata/util/common/base/Joiner;Lcom/google/gdata/util/common/base/Joiner;)V
    .locals 1
    .param p2, "x0"    # Lcom/google/gdata/util/common/base/Joiner;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/gdata/util/common/base/Joiner$2;->this$0:Lcom/google/gdata/util/common/base/Joiner;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/gdata/util/common/base/Joiner;-><init>(Lcom/google/gdata/util/common/base/Joiner;Lcom/google/gdata/util/common/base/Joiner$1;)V

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/Iterable",
            "<*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    .local p2, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const-string v2, "appendable"

    invoke-static {p1, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v2, "parts"

    invoke-static {p2, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 198
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 200
    .local v1, "part":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/google/gdata/util/common/base/Joiner$2;->this$0:Lcom/google/gdata/util/common/base/Joiner;

    invoke-virtual {v2, v1}, Lcom/google/gdata/util/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 205
    .end local v1    # "part":Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 207
    .restart local v1    # "part":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 208
    iget-object v2, p0, Lcom/google/gdata/util/common/base/Joiner$2;->this$0:Lcom/google/gdata/util/common/base/Joiner;

    invoke-static {v2}, Lcom/google/gdata/util/common/base/Joiner;->access$100(Lcom/google/gdata/util/common/base/Joiner;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 209
    iget-object v2, p0, Lcom/google/gdata/util/common/base/Joiner$2;->this$0:Lcom/google/gdata/util/common/base/Joiner;

    invoke-virtual {v2, v1}, Lcom/google/gdata/util/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 212
    .end local v1    # "part":Ljava/lang/Object;
    :cond_2
    return-object p1
.end method

.method public useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;
    .locals 2
    .param p1, "nullText"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified skipNulls"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner$MapJoiner;
    .locals 2
    .param p1, "kvs"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t use .skipNulls() with maps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
