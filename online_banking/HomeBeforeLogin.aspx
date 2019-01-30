<%@ Page Title="Home" Language="C#" MasterPageFile="~/BeforeLogin.master" AutoEventWireup="true" CodeFile="HomeBeforeLogin.aspx.cs" Inherits="HomeBeforeLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container">
        <div id="myslider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myslider" data-slide-to="0" class="active"></li>
                <li data-target="#myslider" data-slide-to="1"></li>
                <li data-target="#myslider" data-slide-to="2"></li>
                <li data-target="#myslider" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img class="img-responsive" src="Sliderimages/placeholder1.jpg" alt="body image" />
                    <div class="carousel-caption">
                        <h2>Caption for first slide
                        </h2>
                    </div>
                </div>
                <div class="item">
                    <img class="img-responsive" src="Sliderimages/placeholder2.jpg" alt="body image" />
                    <div class="carousel-caption">
                        <h2>Caption for second slide
                        </h2>
                    </div>
                </div>
                <div class="item">
                    <img class="img-responsive" src="Sliderimages/placeholder3.jpg" alt="body image" />
                    <div class="carousel-caption">
                        <h2>Caption for third slide
                        </h2>
                    </div>
                </div>
                <div class="item">
                    <img class="img-responsive" src="Sliderimages/placeholder4.jpg" alt="body image" />
                    <div class="carousel-caption">
                        <h2>Caption for forth slide
                        </h2>
                    </div>
                </div>
                <a class="left carousel-control" href="#myslider" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous </span></a><a class="right carousel-control"
                    href="#myslider" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span><span class="sr-only">Next </span></a>
            </div>
        </div>
    </div>

</asp:Content>


