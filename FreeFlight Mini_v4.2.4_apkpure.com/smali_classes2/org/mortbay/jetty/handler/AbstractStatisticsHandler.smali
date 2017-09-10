.class public abstract Lorg/mortbay/jetty/handler/AbstractStatisticsHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "AbstractStatisticsHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    .line 25
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/AbstractStatisticsHandler;->statsReset()V

    .line 26
    return-void
.end method

.method public abstract getRequestTimeAverage()J
.end method

.method public abstract getRequestTimeMax()J
.end method

.method public abstract getRequestTimeMin()J
.end method

.method public abstract getRequestTimeTotal()J
.end method

.method public abstract getRequests()I
.end method

.method public abstract getRequestsActive()I
.end method

.method public abstract getRequestsActiveMax()I
.end method

.method public abstract getResponses1xx()I
.end method

.method public abstract getResponses2xx()I
.end method

.method public abstract getResponses3xx()I
.end method

.method public abstract getResponses4xx()I
.end method

.method public abstract getResponses5xx()I
.end method

.method public abstract getStatsOnMs()J
.end method

.method public abstract statsReset()V
.end method
