.class public Lcom/google/gdata/data/introspection/Workspace$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/introspection/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/introspection/Workspace;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/introspection/Workspace;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    .line 144
    const-class v0, Lcom/google/gdata/data/introspection/Workspace;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lorg/xml/sax/Attributes;)V

    .line 145
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 4
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
    .line 153
    iget-object v2, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    invoke-static {v2}, Lcom/google/gdata/data/introspection/Workspace;->access$000(Lcom/google/gdata/data/introspection/Workspace;)Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "collection"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    new-instance v1, Lcom/google/gdata/data/introspection/Collection;

    invoke-direct {v1}, Lcom/google/gdata/data/introspection/Collection;-><init>()V

    .line 159
    .local v1, "collection":Lcom/google/gdata/data/introspection/Collection;
    iget-object v2, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    invoke-virtual {v2, v1}, Lcom/google/gdata/data/introspection/Workspace;->addCollection(Lcom/google/gdata/data/introspection/Collection;)V

    .line 160
    new-instance v2, Lcom/google/gdata/data/introspection/Collection$Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v2, v1, v3, p3}, Lcom/google/gdata/data/introspection/Collection$Handler;-><init>(Lcom/google/gdata/data/introspection/Collection;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    .line 177
    .end local v1    # "collection":Lcom/google/gdata/data/introspection/Collection;
    :goto_0
    return-object v2

    .line 162
    :cond_0
    const-string v2, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    const-string v2, "title"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    invoke-static {v2}, Lcom/google/gdata/data/introspection/Workspace;->access$100(Lcom/google/gdata/data/introspection/Workspace;)Lcom/google/gdata/util/Version;

    move-result-object v2

    sget-object v3, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    invoke-static {v2}, Lcom/google/gdata/data/introspection/Workspace;->access$200(Lcom/google/gdata/data/introspection/Workspace;)Lcom/google/gdata/data/TextConstruct;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 167
    new-instance v2, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->duplicateTitle:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v2

    .line 171
    :cond_1
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v0

    .line 173
    .local v0, "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    iget-object v2, p0, Lcom/google/gdata/data/introspection/Workspace$Handler;->this$0:Lcom/google/gdata/data/introspection/Workspace;

    iget-object v3, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    invoke-static {v2, v3}, Lcom/google/gdata/data/introspection/Workspace;->access$202(Lcom/google/gdata/data/introspection/Workspace;Lcom/google/gdata/data/TextConstruct;)Lcom/google/gdata/data/TextConstruct;

    .line 174
    iget-object v2, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto :goto_0

    .line 177
    .end local v0    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v2

    goto :goto_0
.end method
