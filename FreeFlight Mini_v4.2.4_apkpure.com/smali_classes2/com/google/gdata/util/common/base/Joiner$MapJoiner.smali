.class public Lcom/google/gdata/util/common/base/Joiner$MapJoiner;
.super Ljava/lang/Object;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapJoiner"
.end annotation


# instance fields
.field private joiner:Lcom/google/gdata/util/common/base/Joiner;

.field private keyValueSeparator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/gdata/util/common/base/Joiner;Ljava/lang/String;)V
    .locals 0
    .param p1, "joiner"    # Lcom/google/gdata/util/common/base/Joiner;
    .param p2, "keyValueSeparator"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    .line 244
    iput-object p2, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/common/base/Joiner;Ljava/lang/String;Lcom/google/gdata/util/common/base/Joiner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/util/common/base/Joiner;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/gdata/util/common/base/Joiner$1;

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;-><init>(Lcom/google/gdata/util/common/base/Joiner;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Map",
            "<**>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 256
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 258
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gdata/util/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 259
    iget-object v3, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 260
    iget-object v3, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gdata/util/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 261
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-static {v3}, Lcom/google/gdata/util/common/base/Joiner;->access$100(Lcom/google/gdata/util/common/base/Joiner;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 263
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 264
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gdata/util/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 265
    iget-object v3, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 266
    iget-object v3, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gdata/util/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 269
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_0
    return-object p1
.end method

.method public appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/Appendable;Ljava/util/Map;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    return-object p1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public join(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner$MapJoiner;
    .locals 3
    .param p1, "nullText"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;

    iget-object v1, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->joiner:Lcom/google/gdata/util/common/base/Joiner;

    invoke-virtual {v1, p1}, Lcom/google/gdata/util/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/gdata/util/common/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;->keyValueSeparator:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/base/Joiner$MapJoiner;-><init>(Lcom/google/gdata/util/common/base/Joiner;Ljava/lang/String;)V

    return-object v0
.end method
