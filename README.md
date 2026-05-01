# Azure-SQL-CS-Analytics

ENG
Project Description
A backend analytics system designed for an e-sports platform, implemented using Microsoft Azure cloud services. This project demonstrates proficiency in relational database modeling, process automation via SQL triggers, and the creation of a reporting layer using database views.

Key Features
Automated Statistics Aggregation: 
Implementation of an AFTER INSERT trigger that updates global player statistics (Kills, Deaths, Matches) in real-time whenever a new match result is recorded.

Analytical Reporting Layer: 
A dedicated v_Leaderboard view that calculates the K/D Ratio, featuring division-by-zero protection (NULLIF) and explicit type casting for high-precision analytical results.

Data Integrity & Architecture: 
Utilization of Foreign Keys and relational constraints to ensure strict data consistency across player profiles, match registries, and performance metrics.

Tech Stack
Database: Azure SQL Database (PaaS)
Language: T-SQL (DML, DDL)
Security: Azure SQL Firewall (IP filtering), Microsoft Entra ID Authentication (Identity & Access Management).

Database Schema
The system architecture consists of three core entities:

Players – Stores player profiles and persistent, aggregated lifetime statistics.
Matches – A registry of all played matches, including dates and map names.
PlayerMatchStats – Granular performance data for individual players within specific matches.

PL
Opis projektu
System analityczny backendu dla platformy e-sportowej, zrealizowany w chmurze Microsoft Azure. 
Projekt demonstruje umiejętność modelowania relacyjnych baz danych, automatyzacji procesów za pomocą wyzwalaczy (triggers) oraz tworzenia warstwy raportowej za pomocą widoków (views).

Główne funkcjonalności
Automatyczna agregacja statystyk: 
Wykorzystanie wyzwalacza AFTER INSERT, który w czasie rzeczywistym aktualizuje globalne statystyki gracza (Kills, Deaths, Matches) po dodaniu wyniku pojedynczego meczu.

Warstwa analityczna: 
Widok v_Leaderboard obliczający wskaźnik KD Ratio z zabezpieczeniem przed dzieleniem przez zero (NULLIF) i rzutowaniem typów dla precyzyjnych wyników.

Integralność danych: 
Zastosowanie kluczy obcych i ograniczeń zapewniających spójność między tabelą graczy, meczów i statystyk.

Technologie
Baza danych: Azure SQL Database (PaaS)
Język: T-SQL (DML, DDL)
Zabezpieczenia: Azure Firewall (IP filtering), Microsoft Entra ID Authentication.

Schemat bazy danych
Projekt opiera się na trzech kluczowych tabelach:

Players – Profil gracza i zagregowane statystyki.
Matches – Rejestr rozegranych spotkań i map.
PlayerMatchStats – Szczegółowe wyniki graczy w konkretnych meczach.
