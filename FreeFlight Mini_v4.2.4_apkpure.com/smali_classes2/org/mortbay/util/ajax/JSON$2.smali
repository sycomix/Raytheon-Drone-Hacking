.class Lorg/mortbay/util/ajax/JSON$2;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Output;


# instance fields
.field private final this$0:Lorg/mortbay/util/ajax/JSON;

.field private final val$buffer:Ljava/lang/StringBuffer;

.field private final val$c:[C


# direct methods
.method constructor <init>(Lorg/mortbay/util/ajax/JSON;[CLjava/lang/StringBuffer;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSON$2;->this$0:Lorg/mortbay/util/ajax/JSON;

    iput-object p2, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    iput-object p3, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    aget-char v0, v0, v2

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->this$0:Lorg/mortbay/util/ajax/JSON;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    aput-char v2, v0, v2

    .line 310
    return-void
.end method

.method public add(Ljava/lang/String;D)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    const/4 v3, 0x0

    .line 335
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    aget-char v0, v0, v3

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 338
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 340
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->this$0:Lorg/mortbay/util/ajax/JSON;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/ajax/JSON;->appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V

    .line 341
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    const/16 v1, 0x2c

    aput-char v1, v0, v3

    .line 342
    return-void
.end method

.method public add(Ljava/lang/String;J)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    const/4 v3, 0x0

    .line 346
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    aget-char v0, v0, v3

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 349
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->this$0:Lorg/mortbay/util/ajax/JSON;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    invoke-static {p2, p3}, Lorg/mortbay/util/TypeUtil;->newLong(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/ajax/JSON;->appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V

    .line 352
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    const/16 v1, 0x2c

    aput-char v1, v0, v3

    .line 353
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    aget-char v0, v0, v2

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 327
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 329
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->this$0:Lorg/mortbay/util/ajax/JSON;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p2}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    const/16 v1, 0x2c

    aput-char v1, v0, v2

    .line 331
    return-void
.end method

.method public add(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const/4 v3, 0x0

    .line 357
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    aget-char v0, v0, v3

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 360
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 362
    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$2;->this$0:Lorg/mortbay/util/ajax/JSON;

    iget-object v2, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    if-eqz p2, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/mortbay/util/ajax/JSON;->appendBoolean(Ljava/lang/StringBuffer;Ljava/lang/Boolean;)V

    .line 363
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    const/16 v1, 0x2c

    aput-char v1, v0, v3

    .line 364
    return-void

    .line 362
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public addClass(Ljava/lang/Class;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v3, 0x0

    .line 314
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    aget-char v0, v0, v3

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 317
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    const-string v1, "\"class\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->this$0:Lorg/mortbay/util/ajax/JSON;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$2;->val$buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/util/ajax/JSON;->append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$2;->val$c:[C

    const/16 v1, 0x2c

    aput-char v1, v0, v3

    .line 320
    return-void
.end method
