.class public Lcom/google/gdata/client/contacts/ContactQuery;
.super Lcom/google/gdata/client/Query;
.source "ContactQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;,
        Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;
    }
.end annotation


# instance fields
.field private group:Ljava/lang/String;

.field private orderBy:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

.field private showDeleted:Ljava/lang/Boolean;

.field private sortOrder:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 37
    sget-object v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->NONE:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    iput-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->orderBy:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->showDeleted:Ljava/lang/Boolean;

    .line 43
    sget-object v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->NONE:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    iput-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->sortOrder:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    .line 112
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderBy()Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->orderBy:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    return-object v0
.end method

.method public getShowDeleted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->showDeleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSortOrder()Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->sortOrder:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    return-object v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->group:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 135
    :goto_0
    iput-object p1, p0, Lcom/google/gdata/client/contacts/ContactQuery;->group:Ljava/lang/String;

    .line 136
    const-string v0, "group"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/client/contacts/ContactQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->group:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setOrderBy(Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;)V
    .locals 2
    .param p1, "orderBy"    # Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    sget-object p1, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->NONE:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->orderBy:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    invoke-virtual {v0, p1}, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iput-object p1, p0, Lcom/google/gdata/client/contacts/ContactQuery;->orderBy:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    .line 163
    const-string v1, "orderby"

    sget-object v0, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->NONE:Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/contacts/ContactQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    return-void

    .line 163
    :cond_2
    invoke-virtual {p1}, Lcom/google/gdata/client/contacts/ContactQuery$OrderBy;->toValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setShowDeleted(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "showDeleted"    # Ljava/lang/Boolean;

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->showDeleted:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iput-object p1, p0, Lcom/google/gdata/client/contacts/ContactQuery;->showDeleted:Ljava/lang/Boolean;

    .line 191
    const-string v1, "showdeleted"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/contacts/ContactQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    return-void

    .line 191
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setSortOrder(Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;)V
    .locals 2
    .param p1, "sortOrder"    # Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    sget-object p1, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->NONE:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery;->sortOrder:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    invoke-virtual {v0, p1}, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iput-object p1, p0, Lcom/google/gdata/client/contacts/ContactQuery;->sortOrder:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    .line 219
    const-string v1, "sortorder"

    sget-object v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->NONE:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/contacts/ContactQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_1
    return-void

    .line 219
    :cond_2
    invoke-virtual {p1}, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->toValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
