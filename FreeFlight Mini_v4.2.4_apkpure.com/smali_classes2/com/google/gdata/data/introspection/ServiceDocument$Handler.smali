.class public Lcom/google/gdata/data/introspection/ServiceDocument$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "ServiceDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/introspection/ServiceDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/introspection/ServiceDocument;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/introspection/ServiceDocument;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/gdata/data/introspection/ServiceDocument$Handler;->this$0:Lcom/google/gdata/data/introspection/ServiceDocument;

    .line 154
    const-class v0, Lcom/google/gdata/data/introspection/ServiceDocument;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 155
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 3
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
    .line 163
    iget-object v1, p0, Lcom/google/gdata/data/introspection/ServiceDocument$Handler;->this$0:Lcom/google/gdata/data/introspection/ServiceDocument;

    invoke-static {v1}, Lcom/google/gdata/data/introspection/ServiceDocument;->access$000(Lcom/google/gdata/data/introspection/ServiceDocument;)Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "workspace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v0, Lcom/google/gdata/data/introspection/Workspace;

    invoke-direct {v0}, Lcom/google/gdata/data/introspection/Workspace;-><init>()V

    .line 168
    .local v0, "workspace":Lcom/google/gdata/data/introspection/Workspace;
    iget-object v1, p0, Lcom/google/gdata/data/introspection/ServiceDocument$Handler;->this$0:Lcom/google/gdata/data/introspection/ServiceDocument;

    iget-object v1, v1, Lcom/google/gdata/data/introspection/ServiceDocument;->workspaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lcom/google/gdata/data/introspection/Workspace$Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/gdata/data/introspection/ServiceDocument$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v1, v0, v2, p3}, Lcom/google/gdata/data/introspection/Workspace$Handler;-><init>(Lcom/google/gdata/data/introspection/Workspace;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    .line 172
    .end local v0    # "workspace":Lcom/google/gdata/data/introspection/Workspace;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v1

    goto :goto_0
.end method
