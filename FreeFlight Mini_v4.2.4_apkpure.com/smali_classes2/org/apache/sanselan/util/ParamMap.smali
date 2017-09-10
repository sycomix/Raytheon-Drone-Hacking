.class public Lorg/apache/sanselan/util/ParamMap;
.super Ljava/lang/Object;
.source "ParamMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z
    .locals 3
    .param p0, "params"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default_value"    # Z

    .prologue
    .line 26
    move v1, p2

    .line 28
    .local v1, "result":Z
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 29
    .local v0, "o":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 32
    :cond_0
    return v1

    .line 28
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
