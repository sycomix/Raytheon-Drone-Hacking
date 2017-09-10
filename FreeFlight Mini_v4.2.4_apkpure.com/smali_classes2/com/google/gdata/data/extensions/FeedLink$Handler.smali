.class Lcom/google/gdata/data/extensions/FeedLink$Handler;
.super Lcom/google/gdata/data/Link$AtomHandler;
.source "FeedLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/FeedLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/FeedLink;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/FeedLink;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 155
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink$Handler;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>.Handler;"
    iput-object p1, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    .line 156
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/Link$AtomHandler;-><init>(Lcom/google/gdata/data/Link;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 157
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink$Handler;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>.Handler;"
    const-string v3, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    const-string v3, "feed"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v3}, Lcom/google/gdata/data/ExtensionProfile;->getFeedLinkProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v2

    .line 190
    .local v2, "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    if-nez v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 194
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    iget-object v3, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    iget-object v3, v3, Lcom/google/gdata/data/extensions/FeedLink;->feedClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/data/BaseFeed;

    iput-object v3, v4, Lcom/google/gdata/data/extensions/FeedLink;->feed:Lcom/google/gdata/data/BaseFeed;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    new-instance v3, Lcom/google/gdata/data/BaseFeed$FeedHandler;

    iget-object v4, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    iget-object v4, v4, Lcom/google/gdata/data/extensions/FeedLink;->feed:Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v2}, Lcom/google/gdata/data/BaseFeed$FeedHandler;-><init>(Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 206
    .end local v2    # "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    :goto_0
    return-object v3

    .line 195
    .restart local v2    # "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/google/gdata/util/ParseException;

    sget-object v4, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v4, v4, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateFeed:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v3, v4, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v3

    .line 198
    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 199
    .local v1, "ie":Ljava/lang/InstantiationException;
    new-instance v3, Lcom/google/gdata/util/ParseException;

    sget-object v4, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v4, v4, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateFeed:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v3, v4, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v3

    .line 206
    .end local v1    # "ie":Ljava/lang/InstantiationException;
    .end local v2    # "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Link$AtomHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v3

    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink$Handler;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>.Handler;"
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "readOnly"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    const-string v2, "true"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/gdata/data/extensions/FeedLink;->readOnly:Z

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v1, "countHint"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/data/extensions/FeedLink$Handler;->this$0:Lcom/google/gdata/data/extensions/FeedLink;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/gdata/data/extensions/FeedLink;->countHint:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidCountHintAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 176
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Link$AtomHandler;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
