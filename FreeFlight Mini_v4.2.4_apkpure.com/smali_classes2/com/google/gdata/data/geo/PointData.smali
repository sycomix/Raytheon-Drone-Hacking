.class public interface abstract Lcom/google/gdata/data/geo/PointData;
.super Ljava/lang/Object;
.source "PointData.java"


# virtual methods
.method public abstract clearPoint()V
.end method

.method public abstract getGeoLocation()Lcom/google/gdata/data/geo/Point;
.end method

.method public abstract setGeoLocation(Lcom/google/gdata/data/geo/Point;)V
.end method

.method public abstract setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
