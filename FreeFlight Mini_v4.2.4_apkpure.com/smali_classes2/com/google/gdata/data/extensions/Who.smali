.class public Lcom/google/gdata/data/extensions/Who;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Who.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/Who$Handler;,
        Lcom/google/gdata/data/extensions/Who$AttendeeStatus;,
        Lcom/google/gdata/data/extensions/Who$AttendeeType;,
        Lcom/google/gdata/data/extensions/Who$Rel;
    }
.end annotation


# instance fields
.field protected attendeeStatus:Lcom/google/gdata/data/extensions/Who$AttendeeStatus;

.field protected attendeeType:Lcom/google/gdata/data/extensions/Who$AttendeeType;

.field protected email:Ljava/lang/String;

.field protected entryLink:Lcom/google/gdata/data/extensions/EntryLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/extensions/EntryLink",
            "<*>;"
        }
    .end annotation
.end field

.field protected rel:Ljava/lang/String;

.field protected valueString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 94
    new-instance v0, Lcom/google/gdata/data/extensions/Who$AttendeeType;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/Who$AttendeeType;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Who;->attendeeType:Lcom/google/gdata/data/extensions/Who$AttendeeType;

    .line 114
    new-instance v0, Lcom/google/gdata/data/extensions/Who$AttendeeStatus;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/Who$AttendeeStatus;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Who;->attendeeStatus:Lcom/google/gdata/data/extensions/Who$AttendeeStatus;

    .line 189
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Who;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "repeatable"    # Z

    .prologue
    .line 133
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 134
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/Who;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 135
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 136
    const-string v1, "who"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 138
    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v4, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->rel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "rel"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Who;->rel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->valueString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "valueString"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Who;->valueString:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->email:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "email"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Who;->email:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "who"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/Who;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 169
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->attendeeType:Lcom/google/gdata/data/extensions/Who$AttendeeType;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/extensions/Who$AttendeeType;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 170
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->attendeeStatus:Lcom/google/gdata/data/extensions/Who$AttendeeStatus;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/extensions/Who$AttendeeStatus;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 172
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/extensions/EntryLink;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 177
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/extensions/Who;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 179
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "who"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public getAttendeeStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->attendeeStatus:Lcom/google/gdata/data/extensions/Who$AttendeeStatus;

    invoke-virtual {v0}, Lcom/google/gdata/data/extensions/Who$AttendeeStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttendeeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->attendeeType:Lcom/google/gdata/data/extensions/Who$AttendeeType;

    invoke-virtual {v0}, Lcom/google/gdata/data/extensions/Who$AttendeeType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryLink()Lcom/google/gdata/data/extensions/EntryLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/EntryLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 185
    new-instance v0, Lcom/google/gdata/data/extensions/Who$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/extensions/Who$Handler;-><init>(Lcom/google/gdata/data/extensions/Who;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method public setAttendeeStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->attendeeStatus:Lcom/google/gdata/data/extensions/Who$AttendeeStatus;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/Who$AttendeeStatus;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setAttendeeType(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->attendeeType:Lcom/google/gdata/data/extensions/Who$AttendeeType;

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/Who$AttendeeType;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Who;->email:Ljava/lang/String;

    return-void
.end method

.method public setEntryLink(Lcom/google/gdata/data/extensions/EntryLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/extensions/EntryLink",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "v":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<*>;"
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Who;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Who;->rel:Ljava/lang/String;

    return-void
.end method

.method public setValueString(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Who;->valueString:Ljava/lang/String;

    return-void
.end method

.method protected visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V
    .locals 1
    .param p1, "ev"    # Lcom/google/gdata/data/ExtensionVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Who;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/extensions/Who;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    .line 146
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 147
    return-void
.end method
