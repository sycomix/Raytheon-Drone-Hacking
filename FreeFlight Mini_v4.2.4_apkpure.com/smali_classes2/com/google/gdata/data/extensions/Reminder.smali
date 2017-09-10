.class public Lcom/google/gdata/data/extensions/Reminder;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Reminder.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/Reminder$Handler;,
        Lcom/google/gdata/data/extensions/Reminder$Method;
    }
.end annotation


# instance fields
.field protected absoluteTime:Lcom/google/gdata/data/DateTime;

.field protected days:Ljava/lang/Integer;

.field protected hours:Ljava/lang/Integer;

.field protected method:Lcom/google/gdata/data/extensions/Reminder$Method;

.field protected minutes:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 203
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 152
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/Reminder;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 153
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 154
    const-string v1, "reminder"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 156
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
    .line 163
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v4, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder;->days:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "days"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Reminder;->days:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder;->hours:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "hours"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Reminder;->hours:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder;->minutes:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "minutes"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Reminder;->minutes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder;->absoluteTime:Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_3

    .line 178
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "absoluteTime"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Reminder;->absoluteTime:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder;->method:Lcom/google/gdata/data/extensions/Reminder$Method;

    if-eqz v0, :cond_4

    .line 183
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "method"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Reminder;->method:Lcom/google/gdata/data/extensions/Reminder$Method;

    invoke-virtual {v2}, Lcom/google/gdata/data/extensions/Reminder$Method;->generate()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_4
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "reminder"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/Reminder;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/extensions/Reminder;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 192
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "reminder"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public getAbsoluteTime()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder;->absoluteTime:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getDays()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder;->days:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 199
    new-instance v0, Lcom/google/gdata/data/extensions/Reminder$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/extensions/Reminder$Handler;-><init>(Lcom/google/gdata/data/extensions/Reminder;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getHours()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder;->hours:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMethod()Lcom/google/gdata/data/extensions/Reminder$Method;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder;->method:Lcom/google/gdata/data/extensions/Reminder$Method;

    return-object v0
.end method

.method public getMinutes()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Reminder;->minutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAbsoluteTime(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Reminder;->absoluteTime:Lcom/google/gdata/data/DateTime;

    return-void
.end method

.method public setDays(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Reminder;->days:Ljava/lang/Integer;

    return-void
.end method

.method public setHours(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Reminder;->hours:Ljava/lang/Integer;

    return-void
.end method

.method public setMethod(Lcom/google/gdata/data/extensions/Reminder$Method;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/extensions/Reminder$Method;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Reminder;->method:Lcom/google/gdata/data/extensions/Reminder$Method;

    return-void
.end method

.method public setMinutes(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Reminder;->minutes:Ljava/lang/Integer;

    return-void
.end method
