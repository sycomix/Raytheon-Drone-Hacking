.class public Lcom/google/gdata/wireformats/AltRegistry;
.super Ljava/lang/Object;
.source "AltRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;
    }
.end annotation


# instance fields
.field private final altHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/wireformats/AltFormat;",
            "Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/google/gdata/wireformats/AltRegistry;

.field private locked:Z

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/wireformats/AltFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/wireformats/AltFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/wireformats/AltRegistry;-><init>(Lcom/google/gdata/wireformats/AltRegistry;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/AltRegistry;)V
    .locals 1
    .param p1, "origRegistry"    # Lcom/google/gdata/wireformats/AltRegistry;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p1, Lcom/google/gdata/wireformats/AltRegistry;->nameMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->nameMap:Ljava/util/Map;

    .line 114
    iget-object v0, p1, Lcom/google/gdata/wireformats/AltRegistry;->typeMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->typeMap:Ljava/util/Map;

    .line 115
    iget-object v0, p1, Lcom/google/gdata/wireformats/AltRegistry;->altHandlers:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->altHandlers:Ljava/util/Map;

    .line 116
    iget-object v0, p1, Lcom/google/gdata/wireformats/AltRegistry;->delegate:Lcom/google/gdata/wireformats/AltRegistry;

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->delegate:Lcom/google/gdata/wireformats/AltRegistry;

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->nameMap:Ljava/util/Map;

    .line 119
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->typeMap:Ljava/util/Map;

    .line 120
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->altHandlers:Ljava/util/Map;

    goto :goto_0
.end method

.method private registerFormat(Lcom/google/gdata/wireformats/AltFormat;)V
    .locals 2
    .param p1, "format"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->nameMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/gdata/wireformats/AltFormat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p1}, Lcom/google/gdata/wireformats/AltFormat;->isSelectableByType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->typeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/gdata/wireformats/AltFormat;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public getGenerator(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/output/OutputGenerator;
    .locals 2
    .param p1, "altFormat"    # Lcom/google/gdata/wireformats/AltFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            ")",
            "Lcom/google/gdata/wireformats/output/OutputGenerator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v1, p0, Lcom/google/gdata/wireformats/AltRegistry;->altHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;

    .line 244
    .local v0, "handlers":Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;
    if-eqz v0, :cond_0

    .line 245
    invoke-static {v0}, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;->access$100(Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;)Lcom/google/gdata/wireformats/output/OutputGenerator;

    move-result-object v1

    .line 250
    :goto_0
    return-object v1

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/wireformats/AltRegistry;->delegate:Lcom/google/gdata/wireformats/AltRegistry;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/google/gdata/wireformats/AltRegistry;->delegate:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v1, p1}, Lcom/google/gdata/wireformats/AltRegistry;->getGenerator(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/output/OutputGenerator;

    move-result-object v1

    goto :goto_0

    .line 250
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParser(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/input/InputParser;
    .locals 2
    .param p1, "altFormat"    # Lcom/google/gdata/wireformats/AltFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            ")",
            "Lcom/google/gdata/wireformats/input/InputParser",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v1, p0, Lcom/google/gdata/wireformats/AltRegistry;->altHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;

    .line 226
    .local v0, "handlers":Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;
    if-eqz v0, :cond_0

    .line 227
    invoke-static {v0}, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;->access$000(Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;)Lcom/google/gdata/wireformats/input/InputParser;

    move-result-object v1

    .line 232
    :goto_0
    return-object v1

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/wireformats/AltRegistry;->delegate:Lcom/google/gdata/wireformats/AltRegistry;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/google/gdata/wireformats/AltRegistry;->delegate:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v1, p1}, Lcom/google/gdata/wireformats/AltRegistry;->getParser(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/input/InputParser;

    move-result-object v1

    goto :goto_0

    .line 232
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasSameHandlers(Lcom/google/gdata/wireformats/AltRegistry;Lcom/google/gdata/wireformats/AltFormat;)Z
    .locals 6
    .param p1, "targetRegistry"    # Lcom/google/gdata/wireformats/AltRegistry;
    .param p2, "altFormat"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 276
    iget-object v4, p0, Lcom/google/gdata/wireformats/AltRegistry;->altHandlers:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;

    .line 277
    .local v1, "thisHandlers":Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;
    iget-object v4, p1, Lcom/google/gdata/wireformats/AltRegistry;->altHandlers:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;

    .line 278
    .local v0, "targetHandlers":Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;
    if-nez v1, :cond_1

    .line 279
    if-nez v0, :cond_0

    .line 281
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 279
    goto :goto_0

    .line 281
    :cond_1
    if-nez v0, :cond_3

    :cond_2
    :goto_1
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;->access$100(Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;)Lcom/google/gdata/wireformats/output/OutputGenerator;

    move-result-object v4

    invoke-static {v0}, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;->access$100(Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;)Lcom/google/gdata/wireformats/output/OutputGenerator;

    move-result-object v5

    if-ne v4, v5, :cond_2

    invoke-static {v1}, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;->access$000(Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;)Lcom/google/gdata/wireformats/input/InputParser;

    move-result-object v4

    invoke-static {v0}, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;->access$000(Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;)Lcom/google/gdata/wireformats/input/InputParser;

    move-result-object v5

    if-ne v4, v5, :cond_2

    move v3, v2

    goto :goto_1
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->locked:Z

    .line 164
    return-void
.end method

.method public lookupName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/google/gdata/wireformats/AltRegistry;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/AltFormat;

    .line 174
    .local v0, "format":Lcom/google/gdata/wireformats/AltFormat;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/gdata/wireformats/AltRegistry;->delegate:Lcom/google/gdata/wireformats/AltRegistry;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/google/gdata/wireformats/AltRegistry;->delegate:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v1, p1}, Lcom/google/gdata/wireformats/AltRegistry;->lookupName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public lookupType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat;
    .locals 5
    .param p1, "contentType"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 190
    iget-object v3, p0, Lcom/google/gdata/wireformats/AltRegistry;->typeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/AltFormat;

    .line 191
    .local v0, "format":Lcom/google/gdata/wireformats/AltFormat;
    if-nez v0, :cond_1

    .line 193
    iget-object v3, p0, Lcom/google/gdata/wireformats/AltRegistry;->typeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/wireformats/AltFormat;

    .line 194
    .local v2, "testFormat":Lcom/google/gdata/wireformats/AltFormat;
    invoke-virtual {v2}, Lcom/google/gdata/wireformats/AltFormat;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/gdata/util/ContentType;->match(Lcom/google/gdata/util/ContentType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    move-object v0, v2

    .line 200
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "testFormat":Lcom/google/gdata/wireformats/AltFormat;
    :cond_1
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/google/gdata/wireformats/AltRegistry;->delegate:Lcom/google/gdata/wireformats/AltRegistry;

    if-eqz v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/google/gdata/wireformats/AltRegistry;->delegate:Lcom/google/gdata/wireformats/AltRegistry;

    invoke-virtual {v3, p1}, Lcom/google/gdata/wireformats/AltRegistry;->lookupType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    .line 203
    .end local v0    # "format":Lcom/google/gdata/wireformats/AltFormat;
    :cond_2
    return-object v0
.end method

.method public register(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/input/InputParser;Lcom/google/gdata/wireformats/output/OutputGenerator;)V
    .locals 2
    .param p1, "format"    # Lcom/google/gdata/wireformats/AltFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            "Lcom/google/gdata/wireformats/input/InputParser",
            "<*>;",
            "Lcom/google/gdata/wireformats/output/OutputGenerator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "parser":Lcom/google/gdata/wireformats/input/InputParser;, "Lcom/google/gdata/wireformats/input/InputParser<*>;"
    .local p3, "generator":Lcom/google/gdata/wireformats/output/OutputGenerator;, "Lcom/google/gdata/wireformats/output/OutputGenerator<*>;"
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {p3}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-boolean v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->locked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Registry is locked against changes"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/AltRegistry;->registerFormat(Lcom/google/gdata/wireformats/AltFormat;)V

    .line 154
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->altHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;

    invoke-direct {v1, p2, p3}, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;-><init>(Lcom/google/gdata/wireformats/input/InputParser;Lcom/google/gdata/wireformats/output/OutputGenerator;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registeredFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/wireformats/AltFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->altHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/google/gdata/wireformats/AltRegistry;)V
    .locals 2
    .param p1, "delegate"    # Lcom/google/gdata/wireformats/AltRegistry;

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/gdata/wireformats/AltRegistry;->locked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Registry is locked against changes"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 261
    iput-object p1, p0, Lcom/google/gdata/wireformats/AltRegistry;->delegate:Lcom/google/gdata/wireformats/AltRegistry;

    .line 262
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
