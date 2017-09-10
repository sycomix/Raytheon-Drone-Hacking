.class public Lcom/google/gdata/data/youtube/YouTubeMediaRating;
.super Lcom/google/gdata/data/media/mediarss/MediaRating;
.source "YouTubeMediaRating.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    isRepeatable = true
    localName = "rating"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/youtube/YouTubeMediaRating$1;,
        Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;
    }
.end annotation


# static fields
.field private static final ALL_COUNTRIES:Ljava/lang/String; = "all"


# instance fields
.field private countries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/MediaRating;-><init>()V

    .line 60
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->UNSET:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method private static join(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "strings":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 172
    .local v2, "isFirst":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, "string":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 174
    const/4 v2, 0x0

    .line 178
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 180
    .end local v3    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static split(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, " "

    invoke-direct {v1, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 186
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 193
    :goto_0
    return-object v3

    .line 189
    :cond_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 190
    .local v2, "tokens":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public clearCountry()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->UNSET:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    .line 139
    return-void
.end method

.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 3
    .param p1, "attrsHelper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaRating;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 105
    const-string v1, "country"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "countryValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->clearCountry()V

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->setAllCountries()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v0}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->split(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->setCountries(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getCountries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    return-object v0
.end method

.method public hasCountries()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    sget-object v1, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->COUNTRIES:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 4
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaRating;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 80
    sget-object v1, Lcom/google/gdata/data/youtube/YouTubeMediaRating$1;->$SwitchMap$com$google$gdata$data$youtube$YouTubeMediaRating$CountryState:[I

    iget-object v2, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    invoke-virtual {v2}, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 94
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :pswitch_0
    const-string v0, "all"

    .line 96
    .local v0, "countryValue":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v1, "yt:country"

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    return-void

    .line 86
    .end local v0    # "countryValue":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    invoke-static {v1}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->join(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "countryValue":Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v0    # "countryValue":Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .line 91
    .restart local v0    # "countryValue":Ljava/lang/String;
    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAllCountries()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->ALL:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    .line 131
    return-void
.end method

.method public setCountries(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "countries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->clearCountry()V

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_1
    sget-object v3, Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;->COUNTRIES:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    iput-object v3, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countryState:Lcom/google/gdata/data/youtube/YouTubeMediaRating$CountryState;

    .line 152
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 153
    .local v2, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    .end local v0    # "country":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gdata/data/youtube/YouTubeMediaRating;->countries:Ljava/util/Set;

    goto :goto_0
.end method
