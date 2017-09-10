.class public final Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Lcom/google/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleStatsCounter"
.end annotation


# instance fields
.field private final evictionCount:Lcom/google/common/cache/LongAdder;

.field private final hitCount:Lcom/google/common/cache/LongAdder;

.field private final loadExceptionCount:Lcom/google/common/cache/LongAdder;

.field private final loadSuccessCount:Lcom/google/common/cache/LongAdder;

.field private final missCount:Lcom/google/common/cache/LongAdder;

.field private final totalLoadTime:Lcom/google/common/cache/LongAdder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Lcom/google/common/cache/LongAdder;

    invoke-direct {v0}, Lcom/google/common/cache/LongAdder;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAdder;

    .line 207
    new-instance v0, Lcom/google/common/cache/LongAdder;

    invoke-direct {v0}, Lcom/google/common/cache/LongAdder;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAdder;

    .line 208
    new-instance v0, Lcom/google/common/cache/LongAdder;

    invoke-direct {v0}, Lcom/google/common/cache/LongAdder;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAdder;

    .line 209
    new-instance v0, Lcom/google/common/cache/LongAdder;

    invoke-direct {v0}, Lcom/google/common/cache/LongAdder;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAdder;

    .line 210
    new-instance v0, Lcom/google/common/cache/LongAdder;

    invoke-direct {v0}, Lcom/google/common/cache/LongAdder;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAdder;

    .line 211
    new-instance v0, Lcom/google/common/cache/LongAdder;

    invoke-direct {v0}, Lcom/google/common/cache/LongAdder;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAdder;

    .line 216
    return-void
.end method


# virtual methods
.method public incrementBy(Lcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 4
    .param p1, "other"    # Lcom/google/common/cache/AbstractCache$StatsCounter;

    .prologue
    .line 266
    invoke-interface {p1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->snapshot()Lcom/google/common/cache/CacheStats;

    move-result-object v0

    .line 267
    .local v0, "otherStats":Lcom/google/common/cache/CacheStats;
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->hitCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 268
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->missCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 269
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->loadSuccessCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 270
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->loadExceptionCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 271
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->totalLoadTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 272
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->evictionCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 273
    return-void
.end method

.method public recordEviction()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/LongAdder;->increment()V

    .line 249
    return-void
.end method

.method public recordHits(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAdder;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 224
    return-void
.end method

.method public recordLoadException(J)V
    .locals 1
    .param p1, "loadTime"    # J

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/LongAdder;->increment()V

    .line 243
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 244
    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 1
    .param p1, "loadTime"    # J

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/LongAdder;->increment()V

    .line 237
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 238
    return-void
.end method

.method public recordMisses(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAdder;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/common/cache/LongAdder;->add(J)V

    .line 232
    return-void
.end method

.method public snapshot()Lcom/google/common/cache/CacheStats;
    .locals 14

    .prologue
    .line 253
    new-instance v1, Lcom/google/common/cache/CacheStats;

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v10

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lcom/google/common/cache/LongAdder;

    invoke-virtual {v0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v12

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v1
.end method
