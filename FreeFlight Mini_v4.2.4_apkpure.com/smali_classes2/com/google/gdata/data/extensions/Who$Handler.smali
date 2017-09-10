.class public Lcom/google/gdata/data/extensions/Who$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Who.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Who;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/Who;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/Who;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Who$Handler;->this$0:Lcom/google/gdata/data/extensions/Who;

    .line 192
    const-class v0, Lcom/google/gdata/data/extensions/Who;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 193
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/data/extensions/Who;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V
    .locals 0
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p3, "extendedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Who$Handler;->this$0:Lcom/google/gdata/data/extensions/Who;

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 198
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
    .line 221
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    const-string v0, "attendeeType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who$Handler;->this$0:Lcom/google/gdata/data/extensions/Who;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Who;->attendeeType:Lcom/google/gdata/data/extensions/Who$AttendeeType;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Who$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/extensions/Who$AttendeeType;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 225
    :cond_0
    const-string v0, "attendeeStatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who$Handler;->this$0:Lcom/google/gdata/data/extensions/Who;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Who;->attendeeStatus:Lcom/google/gdata/data/extensions/Who$AttendeeStatus;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Who$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/extensions/Who$AttendeeStatus;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_1
    const-string v0, "entryLink"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who$Handler;->this$0:Lcom/google/gdata/data/extensions/Who;

    new-instance v1, Lcom/google/gdata/data/extensions/EntryLink;

    invoke-direct {v1}, Lcom/google/gdata/data/extensions/EntryLink;-><init>()V

    iput-object v1, v0, Lcom/google/gdata/data/extensions/Who;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    .line 230
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who$Handler;->this$0:Lcom/google/gdata/data/extensions/Who;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Who;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Who$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/extensions/EntryLink;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_2
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
    .line 204
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "rel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who$Handler;->this$0:Lcom/google/gdata/data/extensions/Who;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/Who;->rel:Ljava/lang/String;

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string v0, "valueString"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who$Handler;->this$0:Lcom/google/gdata/data/extensions/Who;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/Who;->valueString:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_2
    const-string v0, "email"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who$Handler;->this$0:Lcom/google/gdata/data/extensions/Who;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/Who;->email:Ljava/lang/String;

    goto :goto_0
.end method
