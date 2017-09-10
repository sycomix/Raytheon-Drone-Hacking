.class public Lcom/google/gdata/data/calendar/WebContent;
.super Ljava/lang/Object;
.source "WebContent.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;,
        Lcom/google/gdata/data/calendar/WebContent$Handler;
    }
.end annotation


# static fields
.field private static final EXTENSION_DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

.field private static final GADGET_TYPE:Ljava/lang/String; = "webContentGadgetPref"

.field public static final REL:Ljava/lang/String; = "http://schemas.google.com/gCal/2005/webContent"

.field private static final TYPE:Ljava/lang/String; = "webContent"


# instance fields
.field private gadgetPrefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private height:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webContentLink:Lcom/google/gdata/data/Link;

.field private width:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 79
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/calendar/WebContent;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 80
    sget-object v1, Lcom/google/gdata/data/calendar/Namespaces;->gCalNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 81
    const-string v1, "webContent"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 83
    sput-object v0, Lcom/google/gdata/data/calendar/WebContent;->EXTENSION_DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v2, p0, Lcom/google/gdata/data/calendar/WebContent;->width:Ljava/lang/String;

    .line 99
    iput-object v2, p0, Lcom/google/gdata/data/calendar/WebContent;->height:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/google/gdata/data/calendar/WebContent;->url:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/google/gdata/data/Link;

    const-string v1, "http://schemas.google.com/gCal/2005/webContent"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/gdata/data/Link;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/WebContent;->setLink(Lcom/google/gdata/data/Link;)V

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcom/google/gdata/data/calendar/WebContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/calendar/WebContent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/gdata/data/calendar/WebContent;->width:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/gdata/data/calendar/WebContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/calendar/WebContent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/gdata/data/calendar/WebContent;->height:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/gdata/data/calendar/WebContent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/calendar/WebContent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/gdata/data/calendar/WebContent;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/gdata/data/calendar/WebContent;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/calendar/WebContent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->gadgetPrefs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/gdata/data/calendar/WebContent;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/calendar/WebContent;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/gdata/data/calendar/WebContent;->gadgetPrefs:Ljava/util/Map;

    return-object p1
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/google/gdata/data/calendar/WebContent;->EXTENSION_DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    return-object v0
.end method

.method public static updateWebContent(Lcom/google/gdata/data/calendar/CalendarEventEntry;)V
    .locals 3
    .param p0, "entry"    # Lcom/google/gdata/data/calendar/CalendarEventEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getWebContentLink()Lcom/google/gdata/data/Link;

    move-result-object v1

    .line 116
    .local v1, "wcLink":Lcom/google/gdata/data/Link;
    if-nez v1, :cond_0

    .line 118
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setWebContent(Lcom/google/gdata/data/calendar/WebContent;)V

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->getWebContent()Lcom/google/gdata/data/calendar/WebContent;

    move-result-object v0

    .line 121
    .local v0, "wc":Lcom/google/gdata/data/calendar/WebContent;
    invoke-virtual {v0, v1}, Lcom/google/gdata/data/calendar/WebContent;->setLink(Lcom/google/gdata/data/Link;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/CalendarEventEntry;->setWebContent(Lcom/google/gdata/data/calendar/WebContent;)V

    goto :goto_0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 9
    .param p1, "writer"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "profile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getWidth()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 130
    new-instance v5, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v6, "width"

    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getWidth()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getHeight()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 133
    new-instance v5, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v6, "height"

    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getHeight()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 136
    new-instance v5, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v6, "url"

    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getGadgetPrefs()Ljava/util/Map;

    move-result-object v4

    .line 139
    .local v4, "preferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    .line 140
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 141
    :cond_3
    sget-object v5, Lcom/google/gdata/data/calendar/Namespaces;->gCalNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "webContent"

    invoke-virtual {p1, v5, v6, v0, v8}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 156
    :cond_4
    :goto_0
    return-void

    .line 143
    :cond_5
    sget-object v5, Lcom/google/gdata/data/calendar/Namespaces;->gCalNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "webContent"

    invoke-virtual {p1, v5, v6, v0, v8}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 144
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 145
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    .local v2, "pref":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v3, "prefAttrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    new-instance v6, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v7, "name"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v6, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v7, "value"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v5, Lcom/google/gdata/data/calendar/Namespaces;->gCalNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "webContentGadgetPref"

    invoke-virtual {p1, v5, v6, v3, v8}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    .end local v2    # "pref":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "prefAttrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    :cond_6
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 153
    sget-object v5, Lcom/google/gdata/data/calendar/Namespaces;->gCalNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "webContent"

    invoke-virtual {p1, v5, v6}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getGadgetPrefs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->gadgetPrefs:Ljava/util/Map;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "profile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lcom/google/gdata/data/calendar/WebContent$Handler;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/calendar/WebContent$Handler;-><init>(Lcom/google/gdata/data/calendar/WebContent;)V

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->webContentLink:Lcom/google/gdata/data/Link;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLink()Lcom/google/gdata/data/Link;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->webContentLink:Lcom/google/gdata/data/Link;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->webContentLink:Lcom/google/gdata/data/Link;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->webContentLink:Lcom/google/gdata/data/Link;

    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->width:Ljava/lang/String;

    return-object v0
.end method

.method public setGadgetPrefs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "gadgetPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/gdata/data/calendar/WebContent;->gadgetPrefs:Ljava/util/Map;

    .line 322
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/gdata/data/calendar/WebContent;->height:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->webContentLink:Lcom/google/gdata/data/Link;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Link;->setHref(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method setLink(Lcom/google/gdata/data/Link;)V
    .locals 2
    .param p1, "link"    # Lcom/google/gdata/data/Link;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->webContentLink:Lcom/google/gdata/data/Link;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->webContentLink:Lcom/google/gdata/data/Link;

    const-class v1, Lcom/google/gdata/data/calendar/WebContent;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Link;->removeExtension(Ljava/lang/Class;)V

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/data/calendar/WebContent;->webContentLink:Lcom/google/gdata/data/Link;

    .line 263
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->webContentLink:Lcom/google/gdata/data/Link;

    invoke-virtual {v0, p0}, Lcom/google/gdata/data/Link;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 264
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->webContentLink:Lcom/google/gdata/data/Link;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Link;->setTitle(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent;->webContentLink:Lcom/google/gdata/data/Link;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Link;->setType(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/gdata/data/calendar/WebContent;->url:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/gdata/data/calendar/WebContent;->width:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getWidth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/WebContent;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
