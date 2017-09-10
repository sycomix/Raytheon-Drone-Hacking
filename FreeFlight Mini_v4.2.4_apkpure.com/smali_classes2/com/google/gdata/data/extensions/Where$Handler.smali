.class Lcom/google/gdata/data/extensions/Where$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Where.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Where;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/Where;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/Where;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Where$Handler;->this$0:Lcom/google/gdata/data/extensions/Where;

    .line 145
    const-class v0, Lcom/google/gdata/data/extensions/Where;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 146
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
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
    .line 168
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "entryLink"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where$Handler;->this$0:Lcom/google/gdata/data/extensions/Where;

    new-instance v1, Lcom/google/gdata/data/extensions/EntryLink;

    invoke-direct {v1}, Lcom/google/gdata/data/extensions/EntryLink;-><init>()V

    iput-object v1, v0, Lcom/google/gdata/data/extensions/Where;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    .line 171
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where$Handler;->this$0:Lcom/google/gdata/data/extensions/Where;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Where;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Where$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/extensions/EntryLink;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "rel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where$Handler;->this$0:Lcom/google/gdata/data/extensions/Where;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/Where;->rel:Ljava/lang/String;

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v0, "label"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where$Handler;->this$0:Lcom/google/gdata/data/extensions/Where;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/Where;->label:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_2
    const-string v0, "valueString"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where$Handler;->this$0:Lcom/google/gdata/data/extensions/Where;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/Where;->valueString:Ljava/lang/String;

    goto :goto_0
.end method
