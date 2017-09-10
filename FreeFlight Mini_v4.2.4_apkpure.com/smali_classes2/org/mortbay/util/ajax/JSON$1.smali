.class Lorg/mortbay/util/ajax/JSON$1;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Convertible;


# instance fields
.field private final this$0:Lorg/mortbay/util/ajax/JSON;

.field private final val$convertor:Lorg/mortbay/util/ajax/JSON$Convertor;

.field private final val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mortbay/util/ajax/JSON;Lorg/mortbay/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSON$1;->this$0:Lorg/mortbay/util/ajax/JSON;

    iput-object p2, p0, Lorg/mortbay/util/ajax/JSON$1;->val$convertor:Lorg/mortbay/util/ajax/JSON$Convertor;

    iput-object p3, p0, Lorg/mortbay/util/ajax/JSON$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)V
    .locals 0
    .param p1, "object"    # Ljava/util/Map;

    .prologue
    .line 289
    return-void
.end method

.method public toJSON(Lorg/mortbay/util/ajax/JSON$Output;)V
    .locals 2
    .param p1, "out"    # Lorg/mortbay/util/ajax/JSON$Output;

    .prologue
    .line 293
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$1;->val$convertor:Lorg/mortbay/util/ajax/JSON$Convertor;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$1;->val$object:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/mortbay/util/ajax/JSON$Convertor;->toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V

    .line 294
    return-void
.end method
