.class public Lcom/google/gdata/client/Query;
.super Ljava/lang/Object;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/Query$CustomParameter;,
        Lcom/google/gdata/client/Query$CategoryFilter;,
        Lcom/google/gdata/client/Query$ResultFormat;
    }
.end annotation


# static fields
.field public static final UNDEFINED:I = -0x1


# instance fields
.field private author:Ljava/lang/String;

.field private categoryFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/client/Query$CategoryFilter;",
            ">;"
        }
    .end annotation
.end field

.field private customParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/client/Query$CustomParameter;",
            ">;"
        }
    .end annotation
.end field

.field private feedUrl:Ljava/net/URL;

.field private fields:Ljava/lang/String;

.field private maxResults:I

.field private publishedMax:Lcom/google/gdata/data/DateTime;

.field private publishedMin:Lcom/google/gdata/data/DateTime;

.field private queryString:Ljava/lang/String;

.field private resultFormat:Lcom/google/gdata/client/Query$ResultFormat;

.field private startIndex:I

.field private strict:Z

.field private updatedMax:Lcom/google/gdata/data/DateTime;

.field private updatedMin:Lcom/google/gdata/data/DateTime;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    const/4 v1, -0x1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Query;->categoryFilters:Ljava/util/List;

    .line 141
    iput v1, p0, Lcom/google/gdata/client/Query;->startIndex:I

    .line 148
    iput v1, p0, Lcom/google/gdata/client/Query;->maxResults:I

    .line 155
    sget-object v0, Lcom/google/gdata/client/Query$ResultFormat;->DEFAULT:Lcom/google/gdata/client/Query$ResultFormat;

    iput-object v0, p0, Lcom/google/gdata/client/Query;->resultFormat:Lcom/google/gdata/client/Query$ResultFormat;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/client/Query;->strict:Z

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Query;->customParameters:Ljava/util/List;

    .line 183
    iput-object p1, p0, Lcom/google/gdata/client/Query;->feedUrl:Ljava/net/URL;

    .line 184
    return-void
.end method


# virtual methods
.method public addCategoryFilter(Lcom/google/gdata/client/Query$CategoryFilter;)V
    .locals 1
    .param p1, "categoryFilter"    # Lcom/google/gdata/client/Query$CategoryFilter;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/gdata/client/Query;->categoryFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public addCustomParameter(Lcom/google/gdata/client/Query$CustomParameter;)V
    .locals 2
    .param p1, "customParameter"    # Lcom/google/gdata/client/Query$CustomParameter;

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 646
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null custom parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/Query;->customParameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    return-void
.end method

.method protected appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "queryBuf"    # Ljava/lang/StringBuilder;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "paramValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    return-void

    .line 688
    :cond_0
    const/16 v0, 0x3f

    goto :goto_0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/gdata/client/Query;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/client/Query$CategoryFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/gdata/client/Query;->categoryFilters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/client/Query$CustomParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/gdata/client/Query;->customParameters:Ljava/util/List;

    return-object v0
.end method

.method public getCustomParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/client/Query$CustomParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v1, "matchList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/client/Query$CustomParameter;>;"
    iget-object v3, p0, Lcom/google/gdata/client/Query;->customParameters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/client/Query$CustomParameter;

    .line 672
    .local v2, "param":Lcom/google/gdata/client/Query$CustomParameter;
    invoke-static {v2}, Lcom/google/gdata/client/Query$CustomParameter;->access$000(Lcom/google/gdata/client/Query$CustomParameter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 676
    .end local v2    # "param":Lcom/google/gdata/client/Query$CustomParameter;
    :cond_1
    return-object v1
.end method

.method public getFeedUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/gdata/client/Query;->feedUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/gdata/client/Query;->fields:Ljava/lang/String;

    return-object v0
.end method

.method public getFullTextQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/gdata/client/Query;->queryString:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntegerCustomParameter(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 903
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Query;->getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, "strValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 908
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 916
    .local v0, "intValue":Ljava/lang/Integer;
    :goto_0
    return-object v0

    .line 909
    .end local v0    # "intValue":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 910
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 911
    .restart local v0    # "intValue":Ljava/lang/Integer;
    goto :goto_0

    .line 913
    .end local v0    # "intValue":Ljava/lang/Integer;
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "intValue":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public getMaxResults()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/google/gdata/client/Query;->maxResults:I

    return v0
.end method

.method public getPublishedMax()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/gdata/client/Query;->publishedMax:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getPublishedMin()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/gdata/client/Query;->publishedMin:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getQueryUri()Ljava/net/URI;
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 715
    invoke-virtual {p0}, Lcom/google/gdata/client/Query;->isValidState()Z

    move-result v7

    if-nez v7, :cond_0

    .line 716
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unsupported Query"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 719
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .local v3, "pathBuf":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v7, p0, Lcom/google/gdata/client/Query;->categoryFilters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_1

    .line 725
    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    iget-object v7, p0, Lcom/google/gdata/client/Query;->categoryFilters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/Query$CategoryFilter;

    .line 727
    .local v0, "categoryFilter":Lcom/google/gdata/client/Query$CategoryFilter;
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/gdata/client/Query$CategoryFilter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 796
    .end local v0    # "categoryFilter":Lcom/google/gdata/client/Query$CategoryFilter;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 798
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unable to encode query URI"

    invoke-direct {v7, v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 733
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .local v4, "queryBuf":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/google/gdata/client/Query;->queryString:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 735
    const-string v7, "q"

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v8

    iget-object v9, p0, Lcom/google/gdata/client/Query;->queryString:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_2
    iget-object v7, p0, Lcom/google/gdata/client/Query;->author:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 740
    const-string v7, "author"

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v8

    iget-object v9, p0, Lcom/google/gdata/client/Query;->author:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :cond_3
    iget-object v7, p0, Lcom/google/gdata/client/Query;->resultFormat:Lcom/google/gdata/client/Query$ResultFormat;

    sget-object v8, Lcom/google/gdata/client/Query$ResultFormat;->DEFAULT:Lcom/google/gdata/client/Query$ResultFormat;

    if-eq v7, v8, :cond_4

    .line 745
    const-string v7, "alt"

    iget-object v8, p0, Lcom/google/gdata/client/Query;->resultFormat:Lcom/google/gdata/client/Query$ResultFormat;

    invoke-virtual {v8}, Lcom/google/gdata/client/Query$ResultFormat;->paramValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_4
    iget-object v7, p0, Lcom/google/gdata/client/Query;->updatedMin:Lcom/google/gdata/data/DateTime;

    if-eqz v7, :cond_5

    .line 750
    const-string v7, "updated-min"

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v8

    iget-object v9, p0, Lcom/google/gdata/client/Query;->updatedMin:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v9}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :cond_5
    iget-object v7, p0, Lcom/google/gdata/client/Query;->updatedMax:Lcom/google/gdata/data/DateTime;

    if-eqz v7, :cond_6

    .line 755
    const-string v7, "updated-max"

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v8

    iget-object v9, p0, Lcom/google/gdata/client/Query;->updatedMax:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v9}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_6
    iget-object v7, p0, Lcom/google/gdata/client/Query;->publishedMin:Lcom/google/gdata/data/DateTime;

    if-eqz v7, :cond_7

    .line 760
    const-string v7, "published-min"

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v8

    iget-object v9, p0, Lcom/google/gdata/client/Query;->publishedMin:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v9}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_7
    iget-object v7, p0, Lcom/google/gdata/client/Query;->publishedMax:Lcom/google/gdata/data/DateTime;

    if-eqz v7, :cond_8

    .line 765
    const-string v7, "published-max"

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v8

    iget-object v9, p0, Lcom/google/gdata/client/Query;->publishedMax:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v9}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_8
    iget v7, p0, Lcom/google/gdata/client/Query;->startIndex:I

    if-eq v7, v10, :cond_9

    .line 770
    const-string v7, "start-index"

    iget v8, p0, Lcom/google/gdata/client/Query;->startIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_9
    iget v7, p0, Lcom/google/gdata/client/Query;->maxResults:I

    if-eq v7, v10, :cond_a

    .line 775
    const-string v7, "max-results"

    iget v8, p0, Lcom/google/gdata/client/Query;->maxResults:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :cond_a
    iget-object v7, p0, Lcom/google/gdata/client/Query;->fields:Ljava/lang/String;

    if-eqz v7, :cond_b

    .line 780
    const-string v7, "fields"

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v8

    iget-object v9, p0, Lcom/google/gdata/client/Query;->fields:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_b
    iget-boolean v7, p0, Lcom/google/gdata/client/Query;->strict:Z

    if-eqz v7, :cond_c

    .line 785
    const-string v7, "strict"

    const-string v8, "true"

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :cond_c
    iget-object v7, p0, Lcom/google/gdata/client/Query;->customParameters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/Query$CustomParameter;

    .line 789
    .local v1, "customParameter":Lcom/google/gdata/client/Query$CustomParameter;
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v7

    invoke-static {v1}, Lcom/google/gdata/client/Query$CustomParameter;->access$000(Lcom/google/gdata/client/Query$CustomParameter;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v8

    invoke-static {v1}, Lcom/google/gdata/client/Query$CustomParameter;->access$100(Lcom/google/gdata/client/Query$CustomParameter;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/google/gdata/client/Query;->appendQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 800
    .end local v1    # "customParameter":Lcom/google/gdata/client/Query$CustomParameter;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "queryBuf":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v6

    .line 803
    .local v6, "use":Ljava/net/URISyntaxException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unable to construct query URI"

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 794
    .end local v6    # "use":Ljava/net/URISyntaxException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "queryBuf":Ljava/lang/StringBuilder;
    :cond_d
    :try_start_2
    new-instance v7, Ljava/net/URI;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v7
.end method

.method public getResultFormat()Lcom/google/gdata/client/Query$ResultFormat;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/gdata/client/Query;->resultFormat:Lcom/google/gdata/client/Query$ResultFormat;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/google/gdata/client/Query;->startIndex:I

    return v0
.end method

.method public final getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 870
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Query;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 872
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/client/Query$CustomParameter;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 873
    const/4 v1, 0x0

    .line 875
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-virtual {v1}, Lcom/google/gdata/client/Query$CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUpdatedMax()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/gdata/client/Query;->updatedMax:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getUpdatedMin()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/gdata/client/Query;->updatedMin:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 6

    .prologue
    .line 818
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gdata/client/Query;->getQueryUri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "queryUri":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 820
    iget-object v4, p0, Lcom/google/gdata/client/Query;->feedUrl:Ljava/net/URL;

    .line 834
    :goto_0
    return-object v4

    .line 827
    :cond_0
    iget-object v4, p0, Lcom/google/gdata/client/Query;->feedUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "feedRoot":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 829
    .local v3, "urlBuf":Ljava/lang/StringBuilder;
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 830
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 832
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 838
    .end local v0    # "feedRoot":Ljava/lang/String;
    .end local v2    # "queryUri":Ljava/lang/String;
    .end local v3    # "urlBuf":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 839
    .local v1, "mue":Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to create query URL"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/google/gdata/client/Query;->strict:Z

    return v0
.end method

.method public isValidState()Z
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/gdata/client/Query;->resultFormat:Lcom/google/gdata/client/Query$ResultFormat;

    sget-object v1, Lcom/google/gdata/client/Query$ResultFormat;->JSON_XD:Lcom/google/gdata/client/Query$ResultFormat;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/gdata/client/Query;->author:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setFields(Ljava/lang/String;)V
    .locals 0
    .param p1, "fields"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/gdata/client/Query;->fields:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setFullTextQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/gdata/client/Query;->queryString:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public final setIntegerCustomParameter(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 887
    if-nez p2, :cond_0

    .line 888
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/Query;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :goto_0
    return-void

    .line 890
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/client/Query;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMaxResults(I)V
    .locals 2
    .param p1, "maxResults"    # I

    .prologue
    .line 553
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max results must be zero or larger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_0
    iput p1, p0, Lcom/google/gdata/client/Query;->maxResults:I

    .line 557
    return-void
.end method

.method public setPublishedMax(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "publishedMax"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/gdata/client/Query;->publishedMax:Lcom/google/gdata/data/DateTime;

    .line 502
    return-void
.end method

.method public setPublishedMin(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "publishedMin"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/google/gdata/client/Query;->publishedMin:Lcom/google/gdata/data/DateTime;

    .line 477
    return-void
.end method

.method public setResultFormat(Lcom/google/gdata/client/Query$ResultFormat;)V
    .locals 0
    .param p1, "resultFormat"    # Lcom/google/gdata/client/Query$ResultFormat;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/google/gdata/client/Query;->resultFormat:Lcom/google/gdata/client/Query$ResultFormat;

    .line 579
    return-void
.end method

.method public setStartIndex(I)V
    .locals 2
    .param p1, "startIndex"    # I

    .prologue
    .line 526
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 527
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start index must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_0
    iput p1, p0, Lcom/google/gdata/client/Query;->startIndex:I

    .line 530
    return-void
.end method

.method public setStrict(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/google/gdata/client/Query;->strict:Z

    .line 598
    return-void
.end method

.method public final setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/google/gdata/client/Query;->getCustomParameters()Ljava/util/List;

    move-result-object v0

    .line 853
    .local v0, "customParams":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/client/Query$CustomParameter;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/Query;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/Query$CustomParameter;

    .line 854
    .local v1, "existingValue":Lcom/google/gdata/client/Query$CustomParameter;
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 857
    .end local v1    # "existingValue":Lcom/google/gdata/client/Query$CustomParameter;
    :cond_0
    if-eqz p2, :cond_1

    .line 858
    new-instance v3, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-direct {v3, p1, p2}, Lcom/google/gdata/client/Query$CustomParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_1
    return-void
.end method

.method public setUpdatedMax(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "updatedMax"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/gdata/client/Query;->updatedMax:Lcom/google/gdata/data/DateTime;

    .line 451
    return-void
.end method

.method public setUpdatedMin(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "updatedMin"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/gdata/client/Query;->updatedMin:Lcom/google/gdata/data/DateTime;

    .line 426
    return-void
.end method
