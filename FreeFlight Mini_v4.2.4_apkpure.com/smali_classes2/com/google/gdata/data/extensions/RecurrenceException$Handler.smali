.class Lcom/google/gdata/data/extensions/RecurrenceException$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "RecurrenceException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/RecurrenceException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/RecurrenceException;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/RecurrenceException;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/gdata/data/extensions/RecurrenceException$Handler;->this$0:Lcom/google/gdata/data/extensions/RecurrenceException;

    .line 104
    const-class v0, Lcom/google/gdata/data/extensions/RecurrenceException;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 105
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
    .line 136
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "entryLink"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/gdata/data/extensions/RecurrenceException$Handler;->this$0:Lcom/google/gdata/data/extensions/RecurrenceException;

    new-instance v1, Lcom/google/gdata/data/extensions/EntryLink;

    invoke-direct {v1}, Lcom/google/gdata/data/extensions/EntryLink;-><init>()V

    iput-object v1, v0, Lcom/google/gdata/data/extensions/RecurrenceException;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    .line 139
    iget-object v0, p0, Lcom/google/gdata/data/extensions/RecurrenceException$Handler;->this$0:Lcom/google/gdata/data/extensions/RecurrenceException;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/RecurrenceException;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/RecurrenceException$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/extensions/EntryLink;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

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
    .line 112
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const-string v1, "specialized"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const-string v1, "true"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/extensions/RecurrenceException$Handler;->this$0:Lcom/google/gdata/data/extensions/RecurrenceException;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/gdata/data/extensions/RecurrenceException;->isSpecialized:Z

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    const-string v1, "false"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/google/gdata/data/extensions/RecurrenceException$Handler;->this$0:Lcom/google/gdata/data/extensions/RecurrenceException;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/gdata/data/extensions/RecurrenceException;->isSpecialized:Z

    goto :goto_0

    .line 119
    :cond_4
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->invalidBooleanAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 121
    .local v0, "pe":Lcom/google/gdata/util/ParseException;
    const-string v1, "Invalid boolean value for attribute: \'specialized\'"

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 123
    throw v0
.end method
