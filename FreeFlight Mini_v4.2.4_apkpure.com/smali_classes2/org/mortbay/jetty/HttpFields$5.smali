.class Lorg/mortbay/jetty/HttpFields$5;
.super Ljava/lang/Object;
.source "HttpFields.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private final this$0:Lorg/mortbay/jetty/HttpFields;

.field tok:Lorg/mortbay/util/QuotedStringTokenizer;

.field private final val$e:Ljava/util/Enumeration;

.field private final val$separators:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/HttpFields;Ljava/util/Enumeration;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 458
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$5;->this$0:Lorg/mortbay/jetty/HttpFields;

    iput-object p2, p0, Lorg/mortbay/jetty/HttpFields$5;->val$e:Ljava/util/Enumeration;

    iput-object p3, p0, Lorg/mortbay/jetty/HttpFields$5;->val$separators:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$5;->tok:Lorg/mortbay/util/QuotedStringTokenizer;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 463
    iget-object v3, p0, Lorg/mortbay/jetty/HttpFields$5;->tok:Lorg/mortbay/util/QuotedStringTokenizer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mortbay/jetty/HttpFields$5;->tok:Lorg/mortbay/util/QuotedStringTokenizer;

    invoke-virtual {v3}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    :goto_0
    return v1

    .line 464
    :cond_0
    iget-object v3, p0, Lorg/mortbay/jetty/HttpFields$5;->val$e:Ljava/util/Enumeration;

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    iget-object v3, p0, Lorg/mortbay/jetty/HttpFields$5;->val$e:Ljava/util/Enumeration;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 467
    .local v0, "value":Ljava/lang/String;
    new-instance v3, Lorg/mortbay/util/QuotedStringTokenizer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpFields$5;->val$separators:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v2, v2}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v3, p0, Lorg/mortbay/jetty/HttpFields$5;->tok:Lorg/mortbay/util/QuotedStringTokenizer;

    .line 468
    iget-object v3, p0, Lorg/mortbay/jetty/HttpFields$5;->tok:Lorg/mortbay/util/QuotedStringTokenizer;

    invoke-virtual {v3}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 470
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/HttpFields$5;->tok:Lorg/mortbay/util/QuotedStringTokenizer;

    move v1, v2

    .line 471
    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields$5;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 477
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$5;->tok:Lorg/mortbay/util/QuotedStringTokenizer;

    invoke-virtual {v1}, Lorg/mortbay/util/QuotedStringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    .local v0, "next":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 479
    :cond_1
    return-object v0
.end method
