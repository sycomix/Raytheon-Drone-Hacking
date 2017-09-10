.class public Lcom/google/gdata/data/media/mediarss/MediaRestriction;
.super Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;
.source "MediaRestriction.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    isRepeatable = true
    localName = "restriction"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;,
        Lcom/google/gdata/data/media/mediarss/MediaRestriction$Type;
    }
.end annotation


# instance fields
.field private relationship:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

.field private type:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;-><init>()V

    .line 129
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 3
    .param p1, "attrsHelper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 118
    const-string/jumbo v0, "type"

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Type;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Type;

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->type:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Type;

    .line 119
    const-string v0, "relationship"

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->relationship:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    .line 121
    return-void
.end method

.method public bridge synthetic getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentAsCountryCodeList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->getContent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 102
    :cond_0
    return-object v0

    .line 97
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "countries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p0}, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v1, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRelationship()Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->relationship:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    return-object v0
.end method

.method public getType()Lcom/google/gdata/data/media/mediarss/MediaRestriction$Type;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->type:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Type;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 108
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->type:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Type;

    new-instance v2, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v2}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 110
    const-string v0, "relationship"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->relationship:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    new-instance v2, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v2}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 112
    return-void
.end method

.method public bridge synthetic setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public setContentAsCountryCodeList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->setContent(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 75
    .local v3, "isFirst":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, "code":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 77
    const/4 v3, 0x0

    .line 81
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 79
    :cond_1
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 83
    .end local v1    # "code":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->setContent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRelationship(Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;)V
    .locals 0
    .param p1, "relationship"    # Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->relationship:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Relationship;

    .line 52
    return-void
.end method

.method public setType(Lcom/google/gdata/data/media/mediarss/MediaRestriction$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/google/gdata/data/media/mediarss/MediaRestriction$Type;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaRestriction;->type:Lcom/google/gdata/data/media/mediarss/MediaRestriction$Type;

    .line 60
    return-void
.end method
