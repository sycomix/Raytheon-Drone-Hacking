.class Lcom/google/gdata/data/introspection/Collection$Handler$AcceptHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "Collection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/introspection/Collection$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AcceptHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/introspection/Collection$Handler;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/introspection/Collection$Handler;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Collection$Handler$AcceptHandler;->this$1:Lcom/google/gdata/data/introspection/Collection$Handler;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection$Handler$AcceptHandler;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Collection$Handler$AcceptHandler;->value:Ljava/lang/String;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection$Handler$AcceptHandler;->this$1:Lcom/google/gdata/data/introspection/Collection$Handler;

    iget-object v0, v0, Lcom/google/gdata/data/introspection/Collection$Handler;->this$0:Lcom/google/gdata/data/introspection/Collection;

    invoke-static {v0}, Lcom/google/gdata/data/introspection/Collection;->access$000(Lcom/google/gdata/data/introspection/Collection;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection$Handler$AcceptHandler;->this$1:Lcom/google/gdata/data/introspection/Collection$Handler;

    iget-object v0, v0, Lcom/google/gdata/data/introspection/Collection$Handler;->this$0:Lcom/google/gdata/data/introspection/Collection;

    iget-object v1, p0, Lcom/google/gdata/data/introspection/Collection$Handler$AcceptHandler;->value:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/data/introspection/Collection;->access$302(Lcom/google/gdata/data/introspection/Collection;Ljava/util/List;)Ljava/util/List;

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Collection$Handler$AcceptHandler;->this$1:Lcom/google/gdata/data/introspection/Collection$Handler;

    iget-object v0, v0, Lcom/google/gdata/data/introspection/Collection$Handler;->this$0:Lcom/google/gdata/data/introspection/Collection;

    iget-object v1, p0, Lcom/google/gdata/data/introspection/Collection$Handler$AcceptHandler;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/introspection/Collection;->addAccept(Ljava/lang/String;)V

    goto :goto_0
.end method
