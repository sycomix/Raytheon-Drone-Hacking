.class Lcom/google/gdata/data/extensions/EntryLink$Handler;
.super Lcom/google/gdata/data/Link$AtomHandler;
.source "EntryLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/EntryLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/EntryLink;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/EntryLink;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 147
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink$Handler;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>.Handler;"
    iput-object p1, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->this$0:Lcom/google/gdata/data/extensions/EntryLink;

    .line 148
    const-class v0, Lcom/google/gdata/data/extensions/EntryLink;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/Link$AtomHandler;-><init>(Lcom/google/gdata/data/Link;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 149
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
    .line 170
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink$Handler;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>.Handler;"
    const-string v3, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    const-string v3, "entry"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v3}, Lcom/google/gdata/data/ExtensionProfile;->getEntryLinkProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v2

    .line 173
    .local v2, "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    if-nez v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 177
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->this$0:Lcom/google/gdata/data/extensions/EntryLink;

    iget-object v3, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->this$0:Lcom/google/gdata/data/extensions/EntryLink;

    iget-object v3, v3, Lcom/google/gdata/data/extensions/EntryLink;->entryClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/data/BaseEntry;

    iput-object v3, v4, Lcom/google/gdata/data/extensions/EntryLink;->entry:Lcom/google/gdata/data/BaseEntry;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    new-instance v3, Lcom/google/gdata/data/BaseEntry$AtomHandler;

    iget-object v4, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->this$0:Lcom/google/gdata/data/extensions/EntryLink;

    iget-object v4, v4, Lcom/google/gdata/data/extensions/EntryLink;->entry:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v2}, Lcom/google/gdata/data/BaseEntry$AtomHandler;-><init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 189
    .end local v2    # "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    :goto_0
    return-object v3

    .line 178
    .restart local v2    # "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/google/gdata/util/ParseException;

    sget-object v4, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v4, v4, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateEntry:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v3, v4}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v3

    .line 181
    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 182
    .local v1, "ie":Ljava/lang/InstantiationException;
    new-instance v3, Lcom/google/gdata/util/ParseException;

    sget-object v4, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v4, v4, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateEntry:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v3, v4}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v3

    .line 189
    .end local v1    # "ie":Ljava/lang/InstantiationException;
    .end local v2    # "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Link$AtomHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v3

    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink$Handler;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>.Handler;"
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "readOnly"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink$Handler;->this$0:Lcom/google/gdata/data/extensions/EntryLink;

    const-string v1, "true"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/gdata/data/extensions/EntryLink;->readOnly:Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Link$AtomHandler;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
