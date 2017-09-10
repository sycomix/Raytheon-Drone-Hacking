.class public Lcom/google/gdata/data/webmastertools/MessageEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "MessageEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;,
        Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;,
        Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;,
        Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;,
        Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/webmastertools/MessageEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final BODY:Ljava/lang/String; = "body"

.field private static final CATEGORY:Lcom/google/gdata/data/Category;

.field private static final DATE:Ljava/lang/String; = "date"

.field private static final LANGUAGE:Ljava/lang/String; = "language"

.field private static final READ:Ljava/lang/String; = "read"

.field private static final SUBJECT:Ljava/lang/String; = "subject"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "http://schemas.google.com/webmasters/tools/2007#message"

    invoke-static {v0}, Lcom/google/gdata/data/webmastertools/Namespaces;->createCategory(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/webmastertools/MessageEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/MessageEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/webmastertools/MessageEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 83
    invoke-static {}, Lcom/google/gdata/data/extensions/EntryLink;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 84
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 85
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 88
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry;

    const-class v2, Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 90
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry;

    const-class v2, Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 92
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry;

    const-class v2, Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 94
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry;

    const-class v2, Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 96
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry;

    const-class v2, Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 98
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;

    .line 235
    .local v0, "bodyExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;
    if-nez v0, :cond_0

    .line 236
    const/4 v1, 0x0

    .line 239
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDate()Lcom/google/gdata/data/DateTime;
    .locals 2

    .prologue
    .line 179
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;

    .line 180
    .local v0, "dateExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;
    if-nez v0, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 184
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;->getDateTime()Lcom/google/gdata/data/DateTime;

    move-result-object v1

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;

    .line 122
    .local v0, "languageExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;
    if-nez v0, :cond_0

    .line 123
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRead()Z
    .locals 2

    .prologue
    .line 209
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;

    .line 210
    .local v0, "readExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;->getBooleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;

    .line 151
    .local v0, "subjectExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;
    if-nez v0, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 219
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;

    .line 220
    .local v0, "bodyExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;
    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;

    .end local v0    # "bodyExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;
    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;-><init>()V

    .line 222
    .restart local v0    # "bodyExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/MessageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 225
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/MessageEntry$BodyExtension;->setValue(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public setDate(Lcom/google/gdata/data/DateTime;)V
    .locals 2
    .param p1, "date"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 164
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;

    .line 165
    .local v0, "dateExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;
    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;

    .end local v0    # "dateExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;
    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;-><init>()V

    .line 167
    .restart local v0    # "dateExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/MessageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 170
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/MessageEntry$DateExtension;->setDateTime(Lcom/google/gdata/data/DateTime;)V

    .line 171
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;

    .line 107
    .local v0, "languageExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;
    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;

    .end local v0    # "languageExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;
    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;-><init>()V

    .line 109
    .restart local v0    # "languageExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/MessageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 112
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/MessageEntry$LanguageExtension;->setValue(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public setRead(Z)V
    .locals 2
    .param p1, "read"    # Z

    .prologue
    .line 193
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;

    .line 194
    .local v0, "readExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;
    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;

    .end local v0    # "readExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;
    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;-><init>()V

    .line 196
    .restart local v0    # "readExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/MessageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 199
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/MessageEntry$ReadExtension;->setBooleanValue(Z)V

    .line 200
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 135
    const-class v1, Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/MessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;

    .line 136
    .local v0, "subjectExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;
    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;

    .end local v0    # "subjectExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;
    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;-><init>()V

    .line 138
    .restart local v0    # "subjectExtension":Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/MessageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 141
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/MessageEntry$SubjectExtension;->setValue(Ljava/lang/String;)V

    .line 142
    return-void
.end method
