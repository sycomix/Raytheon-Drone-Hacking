.class Lcom/parrot/arsdk/arrouter/ARRouter$1;
.super Ljava/lang/Object;
.source "ARRouter.java"

# interfaces
.implements Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/ARRouter;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouter$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didUpdateAxis(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "updatedAxis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 176
    .local v1, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    if-eqz p1, :cond_0

    .line 178
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->getCurrentAxisMappings()Ljava/util/Map;

    move-result-object v2

    .line 179
    .local v2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 181
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsStateCurrentAxisMappings(ILjava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 182
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_0

    .line 185
    .end local v0    # "c":I
    .end local v2    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisMappingsStateAllCurrentAxisMappingsSent()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 186
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 187
    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 188
    return-void
.end method

.method public didUpdateFilters(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "updatedFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 194
    .local v1, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    if-eqz p1, :cond_0

    .line 196
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->getCurrentAxisFilters()Ljava/util/Map;

    move-result-object v2

    .line 197
    .local v2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 199
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersStateCurrentAxisFilters(ILjava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 200
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_0

    .line 203
    .end local v0    # "c":I
    .end local v2    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerAxisFiltersStateAllCurrentFiltersSent()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 204
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 205
    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 206
    return-void
.end method

.method public didUpdateKeys(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "updatedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-direct {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>()V

    .line 158
    .local v1, "cmd":Lcom/parrot/arsdk/arcommands/ARCommand;
    if-eqz p1, :cond_0

    .line 160
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->access$000(Lcom/parrot/arsdk/arrouter/ARRouter;)Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/parrot/arsdk/arrouter/ARRouter$InputMappingListener;->getCurrentKeyMappings()Ljava/util/Map;

    move-result-object v2

    .line 161
    .local v2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsStateCurrentButtonMappings(ILjava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 164
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    goto :goto_0

    .line 167
    .end local v0    # "c":I
    .end local v2    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->setSkyControllerButtonMappingsStateAllCurrentButtonMappingsSent()Lcom/parrot/arsdk/arcommands/ARCOMMANDS_GENERATOR_ERROR_ENUM;

    .line 168
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARRouter$1;->this$0:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v3, v1}, Lcom/parrot/arsdk/arrouter/ARRouter;->sendDataAckToTablet(Lcom/parrot/arsdk/arsal/ARNativeData;)Z

    .line 169
    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 170
    return-void
.end method
